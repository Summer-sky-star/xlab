// index.js
// 获取应用实例
const app = getApp()
var util = require('../../utils/util.js')

Page({
    data: {
    motto: 'Hello World',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    conectState:["开始记录","停止记录"],
    nputText: 'Hello World!',
    //21.10.7新加开始记录时间
    record_start_time:0,
    //receiveText: '',
    SERVICE_UUID:'6E400001-B5A3-F393-E0A9-E50E24DCCA9E',
    TX_CHARACTERISTIC_UUID:'6E400003-B5A3-F393-E0A9-E50E24DCCA9E',
    RX_CHARACTERISTIC_UUID:'6E400002-B5A3-F393-E0A9-E50E24DCCA9E',
    name: '',
    
    //21.7.5擦除完成标志
    erase_complete_flag:1,
    erase_start_flag:true,

    //21.10.8
    localOffset:0,
    //21.9.21进度条参数
    upload_percent:"",
    reminded_number:0,
    toltal_number:0,
    
    //21.9.21接收到数据标志
    datarec_falg:false,

    //21.9.22正在记录数据标志
    is_recieving:false,
    
    //21.10.8加入rtc时间
    rtc_time:[],

    //21.9.25用户名、擦除按键和重置数据库的按键禁止
    userName:"",
    disable_erase_btn:false,
    disable_reset_database_btn:false,
    disable_start_stop_record_btn:false,

    byte_count:0, 
    rec_flag:0,
    state:'开始记录',
    selectNuber:0,
    dataBytes_value:0,
    berry_value:0,
    humidity:0,
    temperature:0,
    connectedDeviceId: '',
    services: {},
    characteristics: {},
    connected: true,
    receiveDate:[],
    receiveDate_process:[],
    rec_value:''
  },
  
  //断开连接
  stop_connect:function(){
    var that = this;
    wx.closeBLEConnection({
      deviceId: that.data.connectedDeviceId,
      success:function(res){
        that.setData({
          connectedDeviceId:'',
        })
        console.log("断开蓝牙设备成功")
        wx.redirectTo({
          url: '/pages/bluetooth/bluetooth?userName=' + that.data.userName
        })
      }
    })
  },

  onLoad: function (options) { 
    //开启屏幕常亮
    wx.setKeepScreenOn({
      keepScreenOn: true,
    })
    let that = this
    wx.cloud.init()
    that.setData({
      name: options.name,
      connectedDeviceId: options.connectedDeviceId,
      userName:options.userName
    })
    //获取服务
    wx.getBLEDeviceServices({
      deviceId: that.data.connectedDeviceId,
      success: function (res) {
        that.setData({
          services: res.services
        })
        //获取设备的特征值
        wx.getBLEDeviceCharacteristics({
          deviceId: options.connectedDeviceId,
          serviceId: res.services[0].uuid,
          success: function (res) {
            that.setData({
              characteristics: res.characteristics
            })
              console.log('启用notify成功')

                //发送同步时间
                let myDate = new Date()
                let myDate_temp = myDate.getTime()

                that.data.localOffset=myDate.getTimezoneOffset()*60000
                let chinatime=myDate_temp-that.data.localOffset

                //分成2段发送
                var s_time=chinatime.toString(2)
                var s_timefore=s_time.substring(0,17)
                var n_timefore=parseInt(s_timefore,2)
                var s_timeback=s_time.substring(17,43)
                var n_timeback=parseInt(s_timeback,2)

                //21.10.9测试
                console.log("s_timefore= "+s_timefore)
                console.log("s_timeback= "+s_timeback)

                let buff = new ArrayBuffer(9)
                let dataView = new DataView(buff)
                
                dataView.setUint8(0,0)//0x00同步时间
                dataView.setUint32(1,n_timefore)
                dataView.setUint32(5,n_timeback)

                wx.writeBLECharacteristicValue({
                  characteristicId: that.data.characteristics[1].uuid,
                  deviceId: that.data.connectedDeviceId,
                  serviceId: that.data.services[0].uuid,
                  value: buff,
                  success:function(res){
                    //console.log(buff),
                    console.log('蓝牙初始化成功 发送成功同步时间')
                    //console.log(res)
                  },
                  fail:function(){
                    console.log(that.data.characteristics)
                    console.log(that.data.services)
                  }
                })

            wx.notifyBLECharacteristicValueChange({
              state: true,
              deviceId: options.connectedDeviceId,
              serviceId: that.data.services[0].uuid,
              type:'notification',
              characteristicId: that.data.characteristics[0].uuid,
             success: function (res) {

              
          //发送成功之后再获取 电池电压 和 数据位数
              setTimeout(function () {
              let buff_berry = new ArrayBuffer(1)
              let dataView2 = new Uint8Array(buff_berry)
        
            for (var i = 0; i < 1; i++) {
              dataView2[i] = 3
            }

          wx.writeBLECharacteristicValue({
            characteristicId: that.data.characteristics[1].uuid,
            deviceId: that.data.connectedDeviceId,
            serviceId: that.data.services[0].uuid,
            value: buff_berry,
            success:function(res){
              console.log('发送0x03成功 获取电池电压')
            },
            fail:function(){
              console.log(that.data.characteristics)
              console.log(that.data.services)
            }
          })}, 0)},
                //失败了
                fail:function(res){
                  console.log(res)
                }
              })
            }
          })
        }
    })
    
    //接收蓝牙信息
    wx.onBLECharacteristicValueChange(function (res) {
      let i = 0
      let j = 0
      that.setData({
        rec_value:new Uint8Array(res.value) //接收返回来的数据
      })

      //console.log(that.data.rec_value)

      /*if(that.data.rec_value[0]==0xaa&& that.data.rec_flag == 0){

      }
      //未执行数据记录任务时，点击擦除之后返回的数
      else*/
      if(that.data.rec_value[0]==0x09 && that.data.rec_flag == 0){
        that.setData({
          erase_start_flag:true
        })
        wx.showLoading({
          title: '擦除FLASH中'
        })
      }

      //未执行数据记录任务时，使用此函数刷新小程序实时数据
      else if(that.data.rec_value[0]==0x04 && that.data.rec_flag == 0){ //0x04温湿度数据
        //console.log('uintdata:',that.data.rec_value[0]);
        let temperature=  (that.data.rec_value[2] & 0xff) << 8 | (that.data.rec_value[1] & 0xff);
        temperature=(-45+175*temperature/65535);
        temperature=temperature.toFixed(2); //四舍五入
        //console.log('temperature:',temperature)
        let humidity=  (that.data.rec_value[4] & 0xff) << 8 | (that.data.rec_value[3] & 0xff);
        humidity=(100*humidity/65535);
        humidity=humidity.toFixed(2);
        //console.log('humidity:',humidity)
        that.setData({
          temperature:temperature,
          humidity:humidity
        })
      }
      else if(that.data.rec_value[0]==0x02 && that.data.rec_flag == 0 && that.data.rec_value.length == 8){//0x02状态函数
        //电池电压
        let bettery=((that.data.rec_value[3] & 0xff) << 8) | (that.data.rec_value[2] & 0xff);
        bettery=bettery / 1024 * 1.2 * 3 * 2;
        bettery=bettery.toFixed(2);
        console.log('bettery:',bettery)
        let dataBytes=0;
        for (i = 0; i < 4; i++) {
          dataBytes |= (that.data.rec_value[i + 4] & 0xff) << i * 8;
        }
        //console.log('(0x02)dataBytes:',dataBytes)
        that.setData({
          berry_value:bettery,
          dataBytes_value:dataBytes,
        })
      }

      else if(that.data.rec_value[0]==0x05 || that.data.rec_flag){ //0x05采集数据
          if(that.data.rec_value[0]==0x05 && that.data.rec_value.length == 18){
            console.log('开始接收新扇区的数据')
            //第一帧开始的标志
            if(that.data.rec_flag==0){
              that.setData({
                byte_count:0,
                datarec_falg:true,
                is_recieving:true,
                disable_start_stop_record_btn:true,//9.26正在接收数据的时候不能开始采集
                receiveDate:[],
                rec_flag : 1,
              })
            }
            that.setData({
              byte_count : (that.data.byte_count+(that.data.rec_value[13]<<8 | that.data.rec_value[12]))
            })
            //21.10.8增加rtc时间
            let result1 = ""
            for(i=7;i>1;i--){
              if (that.data.rec_value[i]>=128)  result1 = result1 +  that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=64) result1 = result1 + '0' + that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=32) result1 = result1 + '00' + that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=16) result1 = result1 + '000' + that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=8)  result1 =  result1 + '0000' + that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=4)  result1 =  result1 + '00000' + that.data.rec_value[i].toString(2)
              else if(that.data.rec_value[i]>=2)  result1 =  result1 + '000000' + that.data.rec_value[i].toString(2)
              else result1 = result1 + '0000000' + that.data.rec_value[i].toString(2)
            }
            //console.log(that.data.rec_value)
            console.log("result1= "+result1)
            console.log(parseInt(result1,2)+that.data.localOffset)
            that.data.rtc_time.push(parseInt(result1,2)+that.data.localOffset)
            //console.log("byte_count= "+that.data.byte_count)
          }

          else if(that.data.rec_value[1]==255 && that.data.rec_value.length == 2)
          {
            that.setData({
              rec_flag : 0,
            })
            if(that.data.receiveDate.length){
              console.log("receieved successfully")
              //console.log(that.data.receiveDate)
              //接收成功数据拼接
              console.log("一共接收了 "+that.data.byte_count +"字节数据")
              that.setData({
                is_recieving:false, //接收完成，把正在接收的标志标记成false
                receiveDate_process:[],
                byte_count:that.data.receiveDate.length
              })
              for(i=0; i < that.data.byte_count ; i=i+12){
                for(j=0;j<12;j=j+2){
                  let temp = that.data.receiveDate[i+j+1]<<8 | that.data.receiveDate[i+j]
                  if(temp<0x8000){ //直接塞进去
                    //console.log(that.data.receiveDate_process[(i+j)/2])
                    if(j<6){
                      that.data.receiveDate_process.push(temp/131.072)
                    }
                    else{
                      that.data.receiveDate_process.push(temp/16384)
                    }
                  }
                  else{//变回负数
                      if(j<6){
                        that.data.receiveDate_process.push((temp-0x10000)/131.072)
                      }
                      else{
                        that.data.receiveDate_process.push((temp-0x10000)/16384)
                      }
                  }
                }
              }

              //console.log(that.data.receiveDate_process)
              that.setData({
                receiveDate:[],
                byte_count:that.data.byte_count/2
              })
              console.log("byte_count= "+that.data.byte_count)

              //9.21上传云端
              wx.showLoading({
                title: '数据上传云端中，请稍后'
              })

              let arr = []
              let num_in_rtc_time=0
              //把数组组合成对象数组
              //console.log("that.data.rtc_time "+ that.data.rtc_time)
              for(i=0;i<that.data.receiveDate_process.length;i+=6){
                num_in_rtc_time = i/2037 //2037=4074/2
                if(num_in_rtc_time<num_in_rtc_time.toFixed(0)){
                  num_in_rtc_time = num_in_rtc_time.toFixed(0)-1
                }
                else {
                  num_in_rtc_time=num_in_rtc_time.toFixed(0)
                }
                let obj = {}
                obj.rtc_time = that.data.rtc_time[num_in_rtc_time]
                obj.num = i/6
                obj.mark = 1
                obj.gx = that.data.receiveDate_process[i+0].toFixed(4)
                obj.gy = that.data.receiveDate_process[i+1].toFixed(4)
                obj.gz = that.data.receiveDate_process[i+2].toFixed(4)
                obj.ax  = that.data.receiveDate_process[i+3].toFixed(4)
                obj.ay  = that.data.receiveDate_process[i+4].toFixed(4)
                obj.az  = that.data.receiveDate_process[i+5].toFixed(4)
                arr.push(obj)
              }
              //console.log(arr)
              //console.log("arr.length= "+arr.length)
              that.setData({
                receiveDate_process:[], //21.10.8处理完了清空内存
                reminded_number:0,
                toltal_number:arr.length,
                upload_percent:"0",
                disable_reset_database_btn:true //9.26上传数据的时候禁止重置数据库
              })

              //上传云函数
              that.upload_data_w(arr,arr.length)
            }
            else{
              console.log('No data recieved')
              wx.showToast({
                title: '无数据接收',
                icon: 'error',
                duration: 1000
              })
            }
          }

          else{
            //把数据统一到一个数组中
            for(let i = 0;i<that.data.rec_value.length;i++)
            {
              if(that.data.rec_flag)
                that.data.receiveDate.push(that.data.rec_value[i])
            }
          }
          
      }

      //21.7.5 擦除完成标志位
      else if(that.data.rec_value[0]==0x06){
        that.setData({
          erase_complete_flag : 1,
          disable_erase_btn:false,          //9.26擦除成功后还原擦除按钮
          disable_reset_database_btn:false, //9.26擦除成功还原重置数据库
          disable_start_stop_record_btn:false //9.26擦除完成把开始采集按钮还原
        })
        wx.hideLoading()
        wx.showToast({
          title: '擦除完成',
          icon: 'success',
          duration: 1000
        })
      }
    })

    //监听蓝牙设备特征值变化
    wx.onBLEConnectionStateChange(function (res) { //6.24新加监听蓝牙连接状态监听重新发3
      console.log(res.connected)
      that.setData({
        connected: res.connected
      })
      
      if(res.connected == true){
        let buff_berry = new ArrayBuffer(1)
        let dataView2 = new Uint8Array(buff_berry)

        for (var i = 0; i < 1; i++) {
        dataView2[i] = 3
      }
        wx.writeBLECharacteristicValue({
          characteristicId:that.data.RX_CHARACTERISTIC_UUID,
          deviceId: that.data.connectedDeviceId,
          serviceId:that.data.SERVICE_UUID,
          value: buff_berry,
          success:function(){
            console.log('发送0x03成功 获取电池电压')
          },
          fail:function(){
            console.log(that.data.characteristics)
            console.log(that.data.services)
          }
          })
     }
    })
  },

  //21.9.21上传函数
  upload_data_w:function(arr,length){
    console.log("length= " + length)
    let that = this
    let arr_update=""
    //进度条
    let upload_percent_string=""

    if(length>350){
      arr_update = arr.slice(0,350)
    }
    else {
      arr_update = arr
    }
    wx.cloud.callFunction({
        name:'uploaddata',
        data:{
          userName:that.data.userName,
          datarec:arr_update
        }
      }).then(res=>{
        console.log(res)
        length = length - 350

        if(length > 0){
          //进度条部分
          console.log("reminded_number"+that.data.reminded_number)
          that.setData({
            reminded_number:(that.data.reminded_number+350)
          })
          upload_percent_string = ((that.data.reminded_number*100/that.data.toltal_number).toFixed()).toString()
          that.setData({
            upload_percent:upload_percent_string
          })
          //进度条部分结束

          console.log("length= "+length)
          this.upload_data_w(arr.slice(350,),length)
        }
        else{
          //进度条部分
          that.setData({
            upload_percent:"100"
          })
          //进度条部分结束
          wx.hideLoading()
          wx.showModal({
            title: '上传数据',
            content: '本地数据上传完成',
            showCancel: false,
            success: function (res) {
              that.setData({
                //把进度条进度清零
                toltal_number:0,
                receiveDate:[],
                reminded_number:0,
                upload_percent:"0",
                rtc_time:[], //21.10.8把rtc时间数组清0
                record_start_time:0,//21.10.7把开始记录时间清零
                disable_reset_database_btn:false,//9.26在上传完数据之后恢复重置数据库按钮
                disable_erase_btn : false,       //9.26发送完毕把擦除加回来
                disable_start_stop_record_btn:false //9.26上传完数据到云端之后把开始采集加回来
              })
            }
          })
        }
      })
    },

  reset_database:function(){
    let that = this
      wx.showLoading({
        title: '正在重置数据库，请稍后',
      })
      wx.cloud.callFunction({
        name:'deletecdata',
        data:{
          userName:that.data.userName,
        }
      }).then(res=>{
        console.log(res)
        wx.hideLoading({
          success: (res) => {
            wx.showToast({
              title: '重置数据库成功',
              icon:'success'
            },1000)
          },
        })
        })
  },
  //记录数据
  start_stop_record:function(){
        var that = this
        if(that.data.selectNuber == 0){
          that.data.selectNuber = 1,
          that.setData({
            disable_erase_btn:true
          })
          that.setData({state : "停止记录"})
          //发送采集指令
          let myDate = new Date()
          let myDate_temp = myDate.getTime()
          let localOffset=myDate.getTimezoneOffset()*60000
          let chinatime=myDate_temp-localOffset  + 100
          let record_start_time_temp = util.formatTime(new Date())
          that.setData({
            record_start_time:record_start_time_temp
          })
          //分成2段发送
          let s_time=chinatime.toString(2)
          let s_timefore=s_time.substring(0,17)
          let n_timefore=parseInt(s_timefore,2)
          let s_timeback=s_time.substring(17,43)
          let n_timeback=parseInt(s_timeback,2)
          let buff_start = new ArrayBuffer(13)
          let dataView_start = new DataView(buff_start)
          
          dataView_start.setUint8(0,2)//发送0x02
          dataView_start.setUint32(1,n_timefore)
          dataView_start.setUint32(5,n_timeback)
          
          wx.writeBLECharacteristicValue({
            characteristicId:that.data.RX_CHARACTERISTIC_UUID,
            deviceId: that.data.connectedDeviceId,
            serviceId: that.data.SERVICE_UUID,
            value: buff_start,
            success:function(res){
              console.log('发送成功0x02加速度开始同步时间')
            },
            fail:function(){
              console.log(that.data.characteristics)
              console.log(that.data.services)
            }
          })
        }
        
        else{ //停止采集，发0xee
          that.data.selectNuber = 0,
          that.setData({state : "开始记录"})

          let buff_stop = new ArrayBuffer(1)
          let dataView = new DataView(buff_stop)
          dataView.setUint8(0,0xee)

          wx.writeBLECharacteristicValue({
            characteristicId: that.data.RX_CHARACTERISTIC_UUID,
            deviceId: that.data.connectedDeviceId,
            serviceId: that.data.SERVICE_UUID,
            value: buff_stop,
            success:function(res){
              console.log('发送停止命令成功')

              //21.9.21改进未接收到数据的提示方法
              setTimeout(function(res) {
                if(that.data.datarec_falg == false){
                  wx.showModal({
                    title: '警告',
                    content: '没有接收到蓝牙数据',
                    showCancel: false,
                  })
                  that.setData({
                    disable_erase_btn:false //9.24 没接收到数据也把擦除按钮还原
                  })
                }
                else{
                  that.data.datarec_falg = false
                }
              }, 1000);
            },
            fail:function(){

            }
        })
    }
  },

  //21.9.21
  cancel_wait:function(){
    wx.hideLoading()
  },

  //7.5擦除处理函数
  erase:function(){
    let that = this
    that.setData({
      disable_erase_btn : true,        //9.26开始擦除时禁止再发送擦除
      disable_reset_database_btn:true, //9.26开始擦除时禁止重置数据库
      erase_start_flag:false,
      disable_start_stop_record_btn:true, //9.26开始擦除的时候把开始采集禁止了
      erase_complete_flag:0
    })
    //发6
    let buff_berry = new ArrayBuffer(1)
    let dataView2 = new Uint8Array(buff_berry)
    for (var i = 0; i < 1; i++) {
      dataView2[i] = 6
    }
    wx.writeBLECharacteristicValue({
      characteristicId:that.data.RX_CHARACTERISTIC_UUID,
      deviceId: that.data.connectedDeviceId,
      serviceId:that.data.SERVICE_UUID,
      value: buff_berry,
      success:function(res){
          console.log('发送0x06成功 开始擦除FLASH芯片')
      },
      fail:function(){
        console.log('发送0x06失败')
      }
    })
    setTimeout(function(res) {
      if(that.data.erase_start_flag==false){
        wx.showModal({
          title: '警告',
          content: '擦除未开始',
          showCancel: false,
        })
        that.setData({
          disable_erase_btn:false,          //9.26擦除失败也还原擦除按钮
          disable_reset_database_btn:false, //9.26擦除失败也还原重置数据库
          erase_start_flag:true,
          disable_start_stop_record_btn:false, //9.26擦除失败把开始采集加回来
          erase_complete_flag:1             //9.26把擦除完成标志在擦除失败的时候也置一
        })
      }
    },1000)
  },

  /*getUserInfo(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  },*/

})


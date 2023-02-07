// pages/cloudtest/cloudtest.js
Page({
  /**
   * 页面的初始数据
   */
  data: {
    userName:'a',
    upload_percent:"",
    reminded_number:0,
    name:"",
    toltal_number:0
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      wx.cloud.init()
      db = wx.cloud.database()
      let that = this
      try{
      db.collection('b').where({
        tags: _.exists(true)
      })
      }catch{
        console.log("2222")
        wx.cloud.callFunction({
          name:'createcollection',
          data:{
            userName:'b',
          },
          success(res){
            console.log(res)
        },
        fail(res){
          console.log("1111")
        }
      })
    }
    console.log("3333")
      /*wx.showLoading({
        title: '正在重置数据库，请稍后',
      })
      wx.cloud.callFunction({
        name:'deletecollection',
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
        })*/
    //9.21上传云端测试代码
    /*let that = this
    console.log(that.data.name.length)

    let i = 0
    let array = []
    let arr = []
    let true_flag = true
    const temp_data = 1000.56802123
    wx.cloud.init()
    //产生数据
    for(i=0;i<120000;i++){
      if(true_flag==true){
        array.push(temp_data + i*0.0000001)
        true_flag = false
      }
      else {
        array.push(-1*temp_data - i*0.0000001)
      }
    } 

    //把数组组合成对象数组
    for(i=0;i<array.length;i+=6){
      let obj = {}
      obj.num = i/6
      obj.gx = array[i+0].toFixed(4)
      obj.gy = array[i+1].toFixed(4)
      obj.gz = array[i+2].toFixed(4)
      obj.x = array[i+3].toFixed(4)
      obj.y = array[i+4].toFixed(4)
      obj.z = array[i+5].toFixed(4)
      arr.push(obj)
    }
    console.log(arr)
    console.log("arr.length= "+arr.length)
    that.setData({
      reminded_number:0,
      toltal_number:arr.length,
      upload_percent:"0"
    })
    //上传云函数
    //that.upload_data_w(arr,arr.length)
//上传云端测试代码结束
  },

  upload_data_w:function(arr,length){
    let that = this
    let arr_update=""
    let upload_percent_string=""
    if(length>15000){
      arr_update = arr.slice(0,15000)
    }
    else {
      arr_update = arr
    }
    wx.cloud.callFunction({
        name:'uploaddata',
        data:{
          datarec:arr_update
        }
      }).then(res=>{
        console.log(res)
        length = length - 15000
        that.setData({
          reminded_number:((that.data.reminded_number+15000))
        })
        upload_percent_string = (that.data.reminded_number*100/that.data.toltal_number).toString()
        that.setData({
          upload_percent:upload_percent_string
        })
        if(length > 0){
          console.log("length= "+length)
          this.upload_data_w(arr.slice(15000,),length)
        }
        else{
          that.setData({
            upload_percent:"100"
          })
        }
      })*/
    },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})
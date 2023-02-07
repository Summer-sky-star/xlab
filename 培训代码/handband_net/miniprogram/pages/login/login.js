//index.js
const app = getApp()

Page({
  data: {
    isPassword:true,
    userName:"",
    passWord:""
  },

  onLoad: function() {

  },

  userNameInput:function(e){
    let that = this
    that.setData({
      userName:e.detail.value
    })
  },

  passWordInput:function(e){
    let that = this
    that.setData({
      passWord:e.detail.value
    })
  },
  //登录函数
  loginacess:function(){
    let that = this
    wx.getNetworkType({
      success(res){
        if(res.networkType=='none'){
          wx.showModal({
            title: '提示',
            content: '请打开网络',
            showCancel: false,
            success: function (res) {
              that.setData({
                searching: false
              })
            }
          })
        }
        else if(that.data.userName.length==0 || that.data.passWord.length==0){
          wx.showModal({
            title: '温馨提示',
            content:'用户名或密码不能为空',
            showCancel:false
          })
        }

        else{
          wx.cloud.init()
          const db = wx.cloud.database()
          db.collection('useracount').where({userName:that.data.userName}).get({
            success:function(res){
              //console.log(res.data)
                if(res.data.length==0){
                  wx.showModal({
                    title: '温馨提示',
                    content:'用户不存在',
                    showCancel:false
                  })
                }
                else if(res.data[0].passWord==that.data.passWord){
                  //9.25判断用户的数据库书否存在，不存在则创建一个
                  try{
                    db.collection(that.data.userName).where({
                      tags: _.exists(true)
                    })
                    }catch{
                      //console.log("2222")
                      wx.cloud.callFunction({
                        name:'createcollection',
                        data:{
                          userName:that.data.userName,
                        },
                        success(res){
                          console.log("创建旧用户数据库成功")
                        }
                      })
                  }
                  wx.showToast({
                    title: '登录成功',
                    icon:'success',
                    duration: 1000
                  })
                  setTimeout(() => {
                    wx.redirectTo({
                      //url: '/pages/index/index?connectedDeviceId=' + e.currentTarget.id + '&name=' + name
                      url:'/pages/bluetooth/bluetooth?&userName=' + that.data.userName
                    })
                  }, 1100);
                }
                else{
                    wx.showModal({
                      title: '温馨提示',
                      content:'密码错误',
                      showCancel:false
                    })
                }
              },
              fail:function(res){
                console.log(res)
              }
            })
          }
        }
    })
  },

  register:function(){
    wx.getNetworkType({
      success(res){
        if(res.networkType=='none'){
          wx.showModal({
            title: '提示',
            content: '请打开网络',
            showCancel: false,
            success: function (res) {
              that.setData({
                searching: false
              })
            }
          })
        }
        else{
          wx.redirectTo({
            url:'/pages/register/register'
          })
        }
      }
    })
  },

  //21.10.4加入密码可见与不可见功能
  switchChange:function(e){
    let that=this 
    if(e.detail.value==true){
      that.setData({
        isPassword:false
      })
    }
    else{
      that.setData({
        isPassword:true
      })
    }
  }

})

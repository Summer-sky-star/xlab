// pages/register/register.js
Page({

  data: {
    userName:"",
    passWord:""
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

  register:function(){
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
        else if(that.data.passWord.length<=3){ //密码长度不能小于3
          wx.showModal({
            title: '温馨提示',
            content:'密码不能小于3位',
            showCancel:false
          })
        }
      else{
        wx.cloud.init()
        const db = wx.cloud.database()
        db.collection('useracount').where({userName:that.data.userName}).get({
          success:function(res){
            //console.log(res.data)
            if(res.data.length!=0){
              wx.showModal({
                title: '温馨提示',
                content:'用户名已存在，请更换用户名',
                showCancel:false
              })
            }
            else {
              wx.showLoading({
                title: '注册中，请稍后',
              })
              db.collection('useracount').add({
                data:{
                  userName:that.data.userName,
                  passWord:that.data.passWord
                },
                success:res=>{
                  //21.9.25使用该用户名创建一个集合
                  wx.cloud.callFunction({
                    name:'createcollection',
                    data:{
                      userName:that.data.userName
                    }
                  }).then(res=>{
                    wx.hideLoading({
                      success: (res) => {
                        wx.showToast({
                          title: '注册成功',
                          icon:'success',
                          duration: 1000
                        })
                        setTimeout(() => {
                          wx.redirectTo({
                            url:'/pages/login/login'
                          })
                        }, 1050);
                      },
                    })
                  })
                  .catch(res=>{
                    wx.hideLoading({
                      success: (res) => {
                        wx.showModal({
                          title: '温馨提示',
                          content:'创建数据库失败，请稍后重新注册',
                          showCancel:false
                        })
                      },
                    })
                  })
                },
                fail:res=>{
                  //console.log(res)
                  wx.showModal({
                    title: '温馨提示',
                    content:'注册失败，请重试',
                    showCancel:false
                  })
                }
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

  cancel:function(){
    wx.redirectTo({
      url:'/pages/login/login'
    })
  },
  onLoad: function (options) {

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
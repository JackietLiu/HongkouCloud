define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		
	};
	

	Model.prototype.button2Click = function(event){
           window.location.href="./login.w";
	};

	Model.prototype.modelLoad = function(event){
	  var userData=this.comp("userData");
	  userData.refreshData();
	  userData.newData({
           defaultValues : [{
            "uID":justep.UUID.createUUID(),
            "phoneNumber":"",
            "password":""
}]
});
	};


	Model.prototype.registerBtnClick = function(event){
                var self = this;
                var userData = this.comp("userData");
                var userID = this.comp("input1").val();
                
                var pwd = this.comp("password1").val();
                var repwd = this.comp("password2").val();
                var ID=justep.UUID.createUUID();
               
                if ( userID === "" || pwd === ""||repwd=== "") {
                    this.comp("messageDialog1").show({
                     "title" : "温馨提示",
                     "message" : "忘记输入用户名或密码?"
                      });
                  }else if ( userID.length!=11) {
               	    this.comp("messageDialog1").show({
                     "title" : "温馨提示",
                     "message" : "手机号码有误！！！"
		              });
               	  }else if(pwd!=repwd) {
                     this.comp("messageDialog1").show({
                        "title" : "警告！",
                        "message" : "两次密码不一致！！！"});
                  }else {
                      var params=
                      {
                       "phoneNumber":userID,
					   "password":pwd
					  
					  };
                   /*   var success = function(ret){
                          userData.saveData();
                          justep.Util.hint("注册成功");     	                   	
                    	  window.location.href="./login.w";
                      };
                      justep.Baas.sendRequest({
					  "url" : "/com/shiquanBlock",
					  "action" : "saveUsers",
					  "async" : false,
					  "params" :params,
					  "success" :success
					  });*/
					
                }
              
               
	};
 	
	Model.prototype.userDataBeforeNew = function(event){
        event.source.setValue("uID", justep.UUID.createUUID());
	};
 	
	return Model;
});
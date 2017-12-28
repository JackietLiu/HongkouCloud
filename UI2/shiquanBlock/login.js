define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/system/lib/cordova/cordova");     
	var Model = function(){
		this.callParent();

	};
	Model.prototype.loginBtnClick = function(event){
		var self = this;
		var name = self.comp("username").val();
		var password = self.comp("password").val();
		var userData = self.comp("userData");

		//用户名和密码为空提示
		if ($.trim(this.comp('username').val()) === "" || $.trim(this.comp('password').val()) === "") {
			self.comp("messageDialog1").show({
				"title" : "温馨提示",
				"message" : "忘记输入用户名或密码?"
			});
		} else{		
			var httpReq = new plugin.HttpRequest();
			var sql = "select * from TS_User where username='"+name+"' and password='"+password+"'";

			httpReq.post("http://118.178.95.108:8019/WebService/WebService_ds.asmx/GetDataBySql", {
				sql : sql		
			},function(err, data) {
				//alert(data);
				justep.Baas.sendRequest({
					"url" : "/com/shiquanBlock",
					"action" : "getXml3",
					"async" : false,
					"params" : {xml:data},
					"success" : function(ret) {
						var value = ret.data;
						//alert(value);
						if(value !== "]"){
							var obj = eval(value);
							userData.clear();
							//alert(obj[0].ID);
							//for (var i = 0; i < obj.length; i++) {
							if(obj[0].UserName == name && obj[0].Password == password ){							
								userData.newData({
									defaultValues : [{
										"ID" : obj[0].ID,
										"UserName"  :  obj[0].UserName,
										"PassWord" :  obj[0].Password
									}]
								});  
								localStorage.setItem('username',name);
								localStorage.setItem('password',password);
								localStorage.setItem('id', userData.val("ID"));
								localStorage.setItem("phoneNumber", obj[0].Mobile_No);

//								if(localStorage.getItem("lockerPwd") == null) {
//								self.comp("messageDialog2").show({
//								"title" : "温馨提示",
//								"message" : "是否设置手势密码(需要验证手机号码)"
//								});	
//								}else{		
								self.comp("mainupdateDialog").open({
									src : require.toUrl("./main.w")
								});	 	
								//justep.Shell.showPage("main");
								//	}
							}else{
								self.comp("messageDialog1").show({
									"title" : "温馨提示",
									"message" : "输入的用户名或密码有误"
								});
							}					
						}else{
							self.comp("messageDialog1").show({
								"title" : "温馨提示",
								"message" : "该用户不存在！！！"
							});
						}
					}
				}); 			  
			});

		}		


	};


	Model.prototype.updataPwdClick = function(event){
		// justep.Shell.showPage("updataPwd");
		this.comp("mainupdateDialog").open({
			src : require.toUrl("./updatapwd.w")
		});
	};


	/** Model.prototype.userDataCustomRefresh = function(event){
    this.comp("userData").refreshData();

	};*/

	return Model;
});define(function(require){
	var $ = require("jquery");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.updataPwdClick = function(event){

	};

	return Model;
});

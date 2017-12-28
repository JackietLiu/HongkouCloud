define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
    require("cordova!cordova-plugin-statusbar");
	require("$UI/system/api/native/network");
	require("cordova!plugin.http.request");	
	require("cordova!cordova-plugin-network-information");
	var MD5 = require('$UI/system/lib/base/md5');
	var md5 = new MD5();
	var Model = function(){
		this.callParent();
		this._id;
	};
	Model.prototype.loginBtnClick = function(event){
		var self = this;
		var ct = navigator.connection.type;
		if (ct != "none") {
			// 使用网络的代码	
			var name = self.comp("username").val();
			var password = self.comp("password").val();
			//用户名和密码为空提示
			if ($.trim(this.comp('username').val()) === "" || $.trim(this.comp('password').val()) === "") {
				self.comp("messageDialog1").show({
					"title" : "温馨提示",
					"message" : "忘记输入用户名或密码?"
				});
			} else{		
				var httpReq = new plugin.HttpRequest();
				var sql = "select * from TS_User where username='"+name+"'and password='"+password+"'";
				httpReq.post("http://116.236.228.21:8899/WebService/WebService_ds.asmx/GetDataBySql", {//116.236.228.21 //192.168.201.21
					sql : sql		
				},function(err, data) {
					//alert(data);
					justep.Baas.sendRequest({
						"url" : "/hongkou/hongkou",
						"action" : "getXml3",
						"async" : false,
						"params" : {xml:data},
						"success" : function(ret) {
							var value = ret.title;
						    var pId = justep.UUID.createUUID();
							//alert(JSON.stringify(value));
							if(value !== "]"){
								var obj = eval(value);
								if(obj[0].username == name && obj[0].password == password ){							
									localStorage.setItem('username',obj[0].username);
									localStorage.setItem('password',obj[0].password);
									localStorage.setItem('id', obj[0].ID);
									localStorage.setItem("phoneNumber", obj[0].Mobile_No);
									//我的页面和left页面需要的数据
									localStorage.setItem('partytitle',obj[0].Party_Title);
									localStorage.setItem('teloffice1',obj[0].Tel_Office1);
									localStorage.setItem('emailUser', obj[0].Email_User);
									localStorage.setItem("usernamereal", obj[0].UserName_Real);
									localStorage.setItem("headimage", obj[0].headerImg);
								
									//justep.Shell.showPage("main");
									justep.Baas.sendRequest({
										"url" : "/work/org",
										"action" : "queryIsActivation",
										"async" : false,
										"params" : {
											"phone" : obj[0].ID,
											"name" : obj[0].UserName_Real,
											"password" : md5.hex_md5_salt(password),
											"uuid" : pId
										},
										"success" : function(data) {
											if (data.status === "注册成功！") {																								
											}else{
												var forgetData = self.comp("forgetPasswordData");
												//同时修改铛铛密码，保证登录密码一致
												forgetData.setFilter("fil1", "sa_opperson.sCode = '" + obj[0].ID + "'");
												forgetData.refreshData({
													"onSuccess" : function(event) {
														var newPas = md5.hex_md5_salt(password);
														self.comp('forgetPasswordData').setValueByID("sPassword", newPas);
														self.comp('forgetPasswordData').saveData();
													},
													"onError" : function() {
														justep.Util.hint("密码修改失败", {
															"type" : "danger"
														});
													}

												});
											}
											if(localStorage.getItem("lockerPwd") === null) {
												self.comp("messageDialog2").show({
													"title" : "温馨提示",
													"message" : "是否设置手势密码(需要验证手机号码)"
												});	
											}else{
												justep.Shell.showPage("main");
											}
										}
									});
								}else{
									self.comp("messageDialog1").show({
										"title" : "温馨提示",
										"message" : "输入的用户名或密码有误"
									});
								}					
							}else{
								self.comp("messageDialog1").show({
									"title" : "温馨提示",
									"message" : "输入的用户名或密码有误"
								});
							} 
						}
					}); 			  
				});

			}		

		} else {
			// 警告用户没有网络连接无法进行
			var options = {
					"delay" : 4000,
					"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
			};
			justep.Util.hint("网络无连接，请开启网络后重试", options);
		}   

	};

	Model.prototype.messageDialog2OK = function(event){
		this.owner.close();
		justep.Shell.showPage("verif");
	};
	Model.prototype.messageDialog2Cancel = function(event){
		this.owner.close();
		justep.Shell.showPage("main");
	};

	Model.prototype.button3Click = function(event){	   

		var me = this;

		var userName = me.comp("up_username").val();          
		var password = me.comp("up_password").val();
		var newpass = me.comp("newpass").val();
		if(password ==="" || newpass === "" || userName ===""){
			me.comp("messageDialog1").show({
				"title" : "温馨提示",
				"message"  : "用户名，密码不能为空！"

			});
		}else {
			var httpReq = new plugin.HttpRequest();
			var sql = "UPDATE TS_User SET Password='"+newpass+"' WHERE UserName= '"+userName+"'and Password='"+password+"'" ;
			httpReq.post("http://116.236.228.21:8899/WebService/WebService_ds.asmx/CUDBySql", {
				sql : sql		
			},function(err, data) {
				justep.Baas.sendRequest({
					"url" : "/hongkou/hongkou",
					"action" : "getXml3",
					"async" : false,
					"params" : {xml:data},
					"success" : function(ret) {
						if(ret.title === "1") {
							justep.Util.hint("密码修改成功，请在此页面登录！", {
								"type" : "success"
							});
							me.comp("popOver1").hide();
						}else {
							me.comp("messageDialog1").show({
								"title" : "温馨提示",
								"message"  : "密码修改失败，请检查用户名或密码！"

							});
						}
					}
				});
			});
		}
	};

	Model.prototype.modelLoad = function(event){
        StatusBar.backgroundColorByHexString("#6296f4");
	};

	return Model;
});

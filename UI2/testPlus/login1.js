define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-statusbar");
	require("$UI/system/api/native/network");
	require("cordova!plugin.http.request");	
	require("cordova!cordova-plugin-network-information");
	var MD5 = require('$UI/system/lib/base/md5');
	var utils = require("$UI/system/components/justep/common/utils");

	var md5 = new MD5();
	var Model = function(){
		this.callParent();
		this._id;
	};
	Model.prototype.loginBtnClick = function(event){
		var self = this;
		// 使用网络的代码	
		var name = self.comp("username").val();
		var password = self.comp("password").val();
		//用户名和密码为空提示
		if ($.trim(this.comp('username').val()) === "" || $.trim(this.comp('password').val()) === "") {
			self.comp("messageDialog1").show({
				"title" : "温馨提示",
				"message" : "请输入用户名或密码！"
			});
		}else{
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "login",
				"async" : false,
				"params" : {
					name : name,
					password : password
				},
				"success" : function(ret) {
					if(ret.state == 1){
						var pId = justep.UUID.createUUID();                 
						localStorage.setItem('username',ret.user[0].username.value);
						localStorage.setItem('password',ret.user[0].password.value);
						localStorage.setItem('id', ret.user[0].id.value);
						localStorage.setItem("phoneNumber", ret.user[0].mobileno.value);
						//我的页面和left页面需要的数据
						localStorage.setItem('partytitle',ret.user[0].partytitle.value);
						localStorage.setItem('teloffice1',ret.user[0].teloffice2.value);
						localStorage.setItem('emailUser', ret.user[0].emailuser.value);
						localStorage.setItem('emailPass', ret.user[0].emailpass.value);
						localStorage.setItem("usernamereal", ret.user[0].realname.value); 
						localStorage.setItem("headimage", ret.user[0].headerimg.value);	
						localStorage.setItem("lockerPwd", ret.user[0].locker.value);	
						//alert(ret.user[0].locker.value);
//						查询是否注册铛铛并根据登录密码修改密码
						justep.Baas.sendRequest({
							"url" : "/work/org",
							"action" : "queryIsActivation",
							"async" : false,
							"params" : {
								"phone" : ret.user[0].id.value,
								"name" : ret.user[0].realname.value,
								"password" : md5.hex_md5_salt(ret.user[0].password.value),
								"uuid" : pId
							},
							"success" : function(data) {
								if (data.status === "注册成功！") {																								
								}else{
									var forgetData = self.comp("forgetPasswordData");
									//同时修改铛铛密码，保证登录密码一致
									forgetData.setFilter("fil1", "sa_opperson.sCode = '" +  ret.user[0].id.value + "'");
									forgetData.refreshData({
										"onSuccess" : function(event) {
											var newPas = md5.hex_md5_salt(ret.user[0].password.value);
											//alert(newPas); 
											self.comp('forgetPasswordData').setValueByID("sPassword", newPas);
											self.comp('forgetPasswordData').saveData();
										},
										"onError" : function() {
											justep.Util.hint("交流注册失败", {
												"type" : "danger"
											});
										}

									});
								}
							}
						});
						self.owner.close();
						justep.Shell.showPage("main");
						/*						if(ret.user[0].locker.value== "0") {
							self.comp("messageDialog2").show({
								"title" : "温馨提示",
								"message" : "是否设置手势密码(需要验证手机号码)"
							});	
						}else{
					    	self.owner.close();
							justep.Shell.showPage("main");
						}*/
					}else{

						self.comp("messageDialog1").show({
							"title" : "温馨提示",
							"message" : "输入的用户名或密码有误"
						});
					}		
				}	
			});
		}
	};

	Model.prototype.messageDialog2OK = function(event){
		this.owner.close();
		var params = {
				sign : 1
		};
		justep.Shell.showPage("verif",params);
	};
	Model.prototype.messageDialog2Cancel = function(event){
		this.owner.close();
		justep.Shell.showPage("main");
	};

	Model.prototype.button3Click = function(event){	   
		var me = this;
		var name = me.comp("up_username").val();          
		var password = me.comp("up_password").val();
		var newpass = me.comp("newpass").val();
		if(password ==="" || newpass === "" || name ===""){
			me.comp("messageDialog1").show({
				"title" : "温馨提示",
				"message"  : "用户名，密码不能为空！"
			});
		}else {
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "updata",
				"async" : false,
				"params" : {
					name : name,
					password : password,
					newpass :newpass
				},
				"success" : function(ret) {
					if(ret.state == 1){
						me.comp("messageDialog1").show({
							"title" : "提示",
							"message"  : "密码修改成功！"
						});
						me.comp("popOver1").hide();
						me.comp("up_username").clear();
						me.comp("up_password").clear();
						me.comp("newpass").clear();
					}else{
						me.comp("messageDialog1").show({
							"title" : "警告",
							"message"  : "密码修改失败！"
						});
					}
				}
			});
		}
	};

	Model.prototype.modelLoad = function(event){
		var me = this;
		document.addEventListener("deviceready", function(){
			var listener = function() {
				console.log("成功调用2");
				me.comp("exitDialog").show();
			};
			document.addEventListener("backbutton", listener, false);
			$(window).on('beforeunload', function(){

				document.removeEventListener('backbutton', listener, false);
			});	
		}, true);
		StatusBar.backgroundColorByHexString("#6296f4");
	};

	Model.prototype.exitDialogOK = function(event){
		navigator.app.exitApp();
	};

	Model.prototype.button4Click = function(event){
		navigator.app.exitApp();
	};

	return Model;
});

define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!plugin.http.request");
	var Baas = justep.Baas;
	var Model = function(){
		this.callParent();
		this.checkCode;
	};

	Model.prototype.sendsmsButton = function(event){
		/*	if (!navigator.mobsms) {
			justep.Util.hint("请安装最新版本(含插件)体验！");
			return;
		}*/
		var me = this;
		var phoneInput = this.comp("phoneNumber").val();
		var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;

		if (reg.test(phoneInput)) {
			me.comp("sendsmsbutton").mytimer();
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "sendMessage",
				"async" : false,
				"params" : {},
				"success" : function(ret) {
					//alert(ret.CheckCode);
					me.checkCode = ret.CheckCode;
					var content = "验证码:"+ret.CheckCode+"（本消息有系统发出，请在三分钟内使用）";
					var httpReq = new plugin.HttpRequest();			
					httpReq.post("http://116.236.228.21:8859/hongkouweb/smsDoController.do?doSms", {
					    phonestr : phoneInput, content : content	
					},function(err, data) {	
						//alert(data);		
					});
					/*					httpReq.post("http://116.236.228.21:8899/WebService/WebService_sms.asmx/sendsms", {
						phonestr : phoneInput, content : content		
					},function(err, data) {	
						//alert(data);		
					});*/
	
				}
			});
		} else {
			justep.Util.hint("手机号码不正确！");
		}
	};

	Model.prototype.modelLoad = function(event){   
		/*this.comp("phoneNumber").set({
			value : localStorage.getItem("phoneNumber")
		});*/
		var comp = this.comp("sendsmsbutton");
		Timmer.apply(comp, [ 60, "获取验证码", "重新发送" ]);

		if (justep.Browser.isX5App) {
			this._deviceType = "app";
		} else {
			this._deviceType = "web";
			window.navigator = window.navigator || {};
			window.navigator.mobsms = {
					init : function(appinfo) {
						alert("发送失败，只支持x5app");
					},
					send : function(appinfo) {
						alert("发送失败，只支持x5app");
					},
					verify : function(appinfo) {
						alert("无法验证，只支持x5app");
					}
			};
		}
	
	};

	Model.prototype.verifyButton = function(event){
		var self = this;
		var phoneInput = this.comp("phoneNumber").val();
		var verifyCode = this.comp("verifyCode").val();
		var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
		if (verifyCode == self.checkCode && reg.test(phoneInput)) {
			setTimeout(function() {
				var params = {set : "2","word" :"设置新的手势密码"};
				//justep.Shell.showPage("locker",params);
				var src = require.toUrl("../locker.w");
				self.comp("lockerDialog").open({
					src:src,
					data:params
				});
			}, 3000);
		} else {
			justep.Util.hint("验证码有误！");
		}
	};
	function Timmer(loopSecond, titile1, title2, lisentner) {

		// 还要检查一个结果返回变量。
		this.loopSecond = loopSecond;
		this.waittime = loopSecond;
		var self = this;
		this.mytimer = function() {
			if (self.waittime <= 0) {
				self.set({
					"disabled" : false,
					"label" : titile1
				});
				this.waittime = loopSecond; // 可设 60秒
			} else {
				self.set({
					"disabled" : true,
					"label" : title2 + "(" + self.waittime + ")"
				});
				self.waittime--;
				setTimeout(function() {
					self.mytimer();
				}, 1000);
			}
		};

	}
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	return Model;
});
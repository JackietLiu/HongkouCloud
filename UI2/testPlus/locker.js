define(function(require){
//	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Locker = require("$UI/system/components/justep/locker/locker");
	var utils = require("$UI/system/components/justep/common/utils");
	var Model = function(){
		this.callParent();
		this.set;
		this.span;
		this.listener;
	};
	Model.prototype.SetPassword = function(){
		this.comp("backBtn").removeClass("hide");
		this.comp("buttonGroup1").removeClass("hide");
		this.comp('locker').set('mode',Locker.Modes.setPassword);
		this.comp('locker').clear();

	};

	Model.prototype.Check = function(){
		if(justep.Browser.isAndroid){
			this.comp("exitbtn").removeClass("hide");
		}

		var str = localStorage.getItem("lockerPwd");
		this.comp('locker').set('password',str.split(","));
		this.comp('locker').set('mode',Locker.Modes.check);
		this.comp('locker').clear();
		/*			var me = this;
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "queryLocker",
			"async" : false,
			"params" : {
				id : localStorage.getItem('id')
			},
			"success" : function(ret) {
				if(ret.locker =="0"){
					justep.Shell.showPage("main");
				}else{
				    var str = ret.locker;
					me.comp('locker').set('password',str.split(","));
					me.comp('locker').set('mode',Locker.Modes.check);
					me.comp('locker').clear();
				}
				}
			});	*/

	};
	Model.prototype.linePoint = function(event){
		//justep.Util.hint("手势："+event.values);
	};
	Model.prototype.setPasswordSuccess = function(event){
		var me = this;
		this.comp('locker').set('password',event.values);
		//将密码存入缓存并保存至数据库，原有的缓存将被替换
		localStorage.setItem("lockerPwd",event.values);
		//alert(event.values);
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "addLocker",
			"async" : false,
			"params" : {
				id : localStorage.getItem("id"),
				locker : event.values
			},
			"success" : function(ret) {
				if(ret.state == 1){
					me.owner.close();
					justep.Shell.showPage("main");
				}else{
					alert("未知错误，请联系管理员");
				}
			}
		});





	};
	Model.prototype.modelParamsReceive = function(event){		
		var me = this;
		this.set = event.params.data.set;
		this.span = event.params.data.word;		
		if(this.set == 2){		    
			//document.getElementById(this.getIDByXID("label1")).innerHTML = this.span;
			me.comp("titleBar1").set("title",this.span);
			this.SetPassword();

		}else if(this.set == 1) {
				
			//document.getElementById(this.getIDByXID("label1")).innerHTML = this.span;
			me.comp("titleBar1").set("title",this.span);
			this.Check();
			this.comp("panel1").setVisible('bottom', false);
		}
	/*			utils.attachDoubleClickExitApp(function() {                  
				console.log("解锁调用双击");
				navigator.app.exitApp();
				return true;
			});*/
			/*document.addEventListener("deviceready", function(){
				me.listener = function() {

					console.log("成功调用1");
					me.comp("exit").show();
					navigator.app.exitApp();
				};
				document.addEventListener("backbutton", me.listener, false);
				
				$(window).on('beforeunload', function(){
                        me.modelUnLoad();
				});	
			}, true);
*/
	};
	Model.prototype.lockerCheckSuccess = function(event){
		this.comp('locker').clear();
		this.owner.close();
		justep.Shell.showPage("main");

	};
	Model.prototype.modelLoad = function(event){
		if(localStorage.getItem("lockerPwd")=="0"){
			this.comp("button2").set({"disabled":true,"label":"未设置手势密码"});
		}	

	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
		justep.Shell.fireEvent("onMyContent",{});

	};
	Model.prototype.lockerCheckError = function(event){
		this.comp('locker').clear();
		/*this.comp("messageDialog1").show({
			title : "提示:",
			message : "手势密码输入错误"
		});*/
	};
	Model.prototype.lockerPasswordError = function(event){
		this.comp("messageDialog1").show({
			title : "提示:",
			message : "输入密码不一致，请重新设置"
		});
	};

	Model.prototype.button2Click = function(event){    
		this.comp("messageDialog2").show();
	};

	Model.prototype.messageDialog2OK = function(event){
		localStorage.setItem("lockerPwd", "0");
		var me = this;
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "delLocker",
			"async" : false,
			"params" : {
				id : localStorage.getItem("id")
			},
			"success" : function(ret) {
				if(ret.state == 1){
					me.owner.close();
					justep.Shell.showPage("main");				
				}
			}
		});

	};


	Model.prototype.exitbtnClick = function(event){
		navigator.app.exitApp();
	};

	Model.prototype.modelUnLoad = function(event){
/*		console.log("移除监听");
		document.removeEventListener('backbutton', this.listener, false);*/
	};

	Model.prototype.exitOK = function(event){
		navigator.app.exitApp();
	};

	return Model;
});
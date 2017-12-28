define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-appavailability");
	require("cordova!com.lampa.startapp");
	require("cordova!cordova-open-native-settings");

	var Model = function(){
		this.callParent();
		this.appID;

	};


	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);

	};

	Model.prototype.modelParamsReceive = function(event){
		var me = this;
		//	alert(event.params.ApplicationImagePath);
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "countOfComment",
			"async" : false,
			"params" : {
				id : event.params.ID
			},
			"success" : function(ret) {
				me.comp("button2").set("label",ret.count);
			}
		});

		var name;
		var cmt = this.comp("cmtData");
		var list2 = this.comp("list2");
		this.appID = event.params.ID;
		var filter = "did='"+event.params.ID+"'and type='1'";
		cmt.setFilter("filter0", filter);
		cmt.refreshData();
		list2.refresh(true);
		//判断
		var div7 = document.getElementById(this.getIDByXID("div7"));
		var div6 = document.getElementById(this.getIDByXID("div6"));
		var span9 = document.getElementById(this.getIDByXID("span9"));
		var span10 = document.getElementById(this.getIDByXID("span10"));
		var label1 = document.getElementById(this.getIDByXID("label1"));
        var span11 = document.getElementById(this.getIDByXID("span11"));
        
		var dlandroid = event.params.ApplicationPathOut;    //安卓市场下载地址
		var dlios = event.params.ApplicationPathIn;               //AppStore下载地址
		var apkname = event.params.ApkPath;                       //安卓应用包名
		var urlSchema = event.params.ApplicationSchema;    //ios url_schema
		var appname = event.params.ApplicationName;       //软件名
		var size = event.params.Size;                                      //软件大小
		var memo = event.params.ApplicationMemo;
		//把传过来的参数写入页面

		document.getElementById(this.getIDByXID("image1")).src = "http://116.236.228.21:8859/hongkouweb/"+event.params.ApplicationImagePath ;	
		document.getElementById(this.getIDByXID("output3")).innerHTML = appname;	
		if(memo !== undefined)
			document.getElementById(this.getIDByXID("output1")).innerHTML = memo;
		else	 document.getElementById(this.getIDByXID("output1")).innerHTML = "该APP无简介信息！";

//		判断该APP是否已安装
		name = appname;
		var schema = "";
		var sApp = "";
		if(justep.Browser.isAndroid){
			schema = apkname;
		}else if(justep.Browser.isIOS){
			schema = urlSchema;
		}
		appAvailability.check(
				schema,
				function(){
					span9.innerHTML = "打开";
					span10.innerHTML = "";
					label1.innerHTML = "";
					div7.onclick = function(){
						if(justep.Browser.isAndroid){//安卓
							sApp = startApp.set({
								"application": schema
							});

						}else if(justep.Browser.isIOS){//ios
							sApp = startApp.set(schema);

						}
						sApp.start(function() { /* success */
							console.log("OK");
						}, function(error) { /* fail */
							alert(error);
						});
					};
				},
				function(){		

					if(size!==undefined)
						label1.innerHTML = size;
					else label1.innerHTML = "未知";
					div7.onclick = function(){
						if(justep.Browser.isAndroid){//andriod
							var url = encodeURI("http://116.236.228.21:8859/hongkouweb/"+dlandroid);
							//var url = encodeURI("http://116.236.228.21:8859/hongkou/shhk.apk");
							var name = dlandroid.substring (dlandroid.lastIndexOf("\/")+1,dlandroid.length);
							console.log("name:"+name);
							var fileTransfer = new FileTransfer();
							var fileURL = "file:///storage/emulated/0/hongkou/"+name+"";
							var divProgress = $("#"+me.getIDByXID("div7"));
							fileTransfer.onprogress = function(progressEvent) { //文件传输插件对象的进度方法调用
								var percentProgress = parseInt((progressEvent.loaded / progressEvent.total) * 100)+ "%"; //获取已下载和总大小的百分比
								if (progressEvent.lengthComputable) {           //获取浏览器返回HEAD信息包含CONTENT-LENGTH为TRUE 则执行下面
									divProgress.css({"width":percentProgress,"color":"#fff","backgroundColor" : "#37b9ed"}); //设置进度条的样式
									divProgress.html(percentProgress);        //设置进度条里面的数字
									//console.log(progressEvent.loaded / progressEvent.total);
									$('#'+me.getIDByXID("div7")).removeAttr('onclick');
								}	

							};
							fileTransfer.download(
									url,
									fileURL,
									function(entry) {
										console.log("entry:"+entry);
										console.log("download complete: " + entry.toURL());
										var uri = encodeURI(entry.toURL());
										divProgress.html("打开");	
										var open = cordova.plugins.disusered.open;
										open(uri, function success(dat) {
											console.log("open:"+dat);
										}, function error(code) {
											console.log("code:"+code);
											/*me.comp("comfireDialog").show({
												type: "YesNo",    // 类型，取值范围：OK,OKCancel,YesNo,YesNoCancel,Prompt
												title: "提示",       // 标题
												message: "打开安装器失败，请到文件管理器安装"       // 提示信息										
											});*/

										}); 

									},
									function(error) {
										console.log("download error source " + error.source);
										console.log("download error target " + error.target);
										console.log("upload error code" + error.code);
										var options = {
												"delay" : 4000,
												"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;",
												"position": "middle"
										};
										if(error.code == 2){
											justep.Util.hint("下载地址有误，请联系管理员", options);
										}else if(error.code == 3){
											justep.Util.hint("下载失败，请检查网络后重试", options);
										}else if(error.code == 1){
											/*justep.Util.hint("下载失败，APP读写权限不足", options);*/
											me.comp("comfireDialog").show({
												type: "YesNo",    // 类型，取值范围：OK,OKCancel,YesNo,YesNoCancel,Prompt
												title: "提示",       // 标题
												message: "政务云读写权限不足,建议开启所有权限,是否打开应用管理"       // 提示信息										
											});

										}
									},
									false,
									{
										headers: {
											"Authorization": "Basic dGVzdHVzZXJuYW1lOnRlc3RwYXNzd29yZA=="
										}
									});
						}else{//ios 

						}

					};
				});
	};


	Model.prototype.submitClick = function(event){
		var me = this;
		//alert(me.appID);
		var content = me.comp("input").val();
		var id = justep.UUID.createUUID();
		var cmt = me.comp("cmtData");
		var list2 = me.comp("list2");
		if($.trim(content) === ""){
			justep.Util.hint("请输入内容", {
				"type" : "danger"
			});	  
		}else{   
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "newComment",
				"async" : false,
				"params" : {
					"pID" : id,
					"pDate" : justep.Date.toString(new Date(), justep.Date.DEFAULT_FORMAT),
					"pName" : localStorage.getItem("usernamereal"),
					"pContent" : content,
					"dID" : me.appID,
					"type" : "1",
					"sid" : localStorage.getItem("id"),
					"pImage" : localStorage.getItem("headimage")

				},
				"success" : function(ret) {
					if(ret.state == 1){
						justep.Util.hint("评论成功", {
							"type" : "success"
						});	  
						me.comp("input").clear();
						me.comp("commentOver").hide();					
						var filter = "did='"+me.appID+"' and type='1'";
						cmt.setFilter("filter0", filter);
						cmt.refreshData();
						list2.refresh(true);
					}else{
						justep.Util.hint("评论失败，未知错误", {
							"type" : "danger"
						});	  
					}
				}
			});

		}
	};

	Model.prototype.modelLoad = function(event){

	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};


	Model.prototype.comfireDialogYes = function(event){
		if(typeof cordova.plugins.settings.openSetting != undefined){
			cordova.plugins.settings.openSetting("manage_applications", function(){
				console.log("opened manage_applications");
			},
			function(){
				console.log("failed to open manage_applications");
			});
		}
	};


	return Model;
});
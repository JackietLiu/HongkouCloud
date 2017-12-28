define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-appavailability");
	require("cordova!com.lampa.startapp");
	require("cordova!cordova-open");
	require("cordova!cordova-plugin-file-opener2");
	require("cordova!cordova-open-native-settings");

	var Model = function(){
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(row) {
		return "http://116.236.228.21:8859/hongkouweb/"+row;
	};

	Model.prototype.appListClick = function(event){
		var row = event.bindingContext.$object; 
		var data = {		
				ID : row.val("ID"),
				ApplicationName : row.val("ApplicationName"),
				ApplicationPathOut : row.val("ApplicationPathOut"),
				ApplicationPathIn : row.val("ApplicationPathIn"),
				ApplicationImagePath : row.val("ApplicationImagePath"),  
				Size : row.val("Size"),
				ApkPath : row.val("ApkPath"),
				ApplicationMemo : row.val("ApplicationMemo"),
				ApplicationSchema :  row.val("ApplicationSchema")
		};    
		justep.Shell.showPage("appDetail", data);

	};

	function success(name,i,urlscheme,app) {    //成功回调
		//alert("name="+name+"-->i="+i+"-->urlscheme="+urlscheme+"-->app="+app);
		return function(){
			var lis = document.getElementsByName("buttons");
			var divs = document.getElementsByName("divs");
			divs[i].style.display="none";
			lis[i].innerHTML = "打开";
			lis[i].onclick = function(){
				var sApp;
				if(justep.Browser.isAndroid){//安卓
					sApp = startApp.set({
						"application":app
					});

				}else{//ios
					sApp = startApp.set(urlscheme);
				}
				sApp.start(function() { /* success */
					console.log("OK");
				}, function(error) { /* fail */
					alert(error);
				});
			};
		};
	}
	function fail(name,i,dlandroid,dlios) {    //失败回调
		//alert("name="+name+"-->i="+i+"-->dlandriod="+dlandriod+"-->dlios="+dlios);

		return function(){
			var me = this;
			//var lis = document.getElementsByName("buttons");
			//var divs = document.getElementsByName("divs");
			var list = $("[name='buttons']");
			var divs = $("[name='divs']");
			list.each(function(){
				$(this).text("下载");
			});
			//lis[i].innerHTML = "下载";
			//  alert(list.eq(i).click(handler));

			list.eq(i).click( function(){
				if(justep.Browser.isAndroid){//andriod
					//var url = "http://116.236.228.21:8859/hongkouweb/" +dlandroid;//"http://116.236.228.21:8859/hongkouweb/"+
					var url = encodeURI("http://116.236.228.21:8859/hongkou/shhk.apk");
					var name = dlandroid.substring (dlandroid.lastIndexOf("\/")+1,dlandroid.length);
					//	console.log("name:"+name);
					var fileTransfer = new FileTransfer();
					var fileURL = "file:///storage/emulated/0/hongkou/"+name+"";               
					fileTransfer.onprogress = function(progressEvent) { //文件传输插件对象的进度方法调用
						var percentProgress = parseInt((progressEvent.loaded / progressEvent.total) * 100)+ "%"; //获取已下载和总大小的百分比			
						//	console.log("lengthComputable:"+progressEvent.lengthComputable);			
						if (progressEvent.lengthComputable) {           //获取浏览器返回HEAD信息包含CONTENT-LENGTH为TRUE 则执行下面
							list.eq(i).text( "正在下载");	
							/*lis[i].style.display="none";*/
							list.eq(i).attr("disabled",true);
							divs.eq(i).removeClass("hide");
							//divs[i].innerHTML = "<div style=\"background:#37b9ed;height:8px;width:"+percentProgress+";border-radius:8px;\"></div>";
							divs.eq(i).html('<div style="background:#37b9ed;height:8px;width:'+percentProgress+';border-radius:8px;"></div>');
						}	
					}; 
					fileTransfer.download(
							url,
							fileURL,
							function(entry) {
								console.log("entry:"+JSON.stringify(entry));
								console.log("download complete: " + entry.toURL());
								var uri = encodeURI(entry.toURL());
								/*	lis[i].innerHTML = "打开";*/
								list.eq(i).attr("disabled",false);
								list.eq(i).text( "打开");	
								/*lis[i].style.display="";*/
								divs.eq(i).addClass("hide");

								var open = cordova.plugins.disusered.open;
								open(uri, function success(dat) {
									console.log("open:"+dat);

								}, function error(code) {
									console.log("code:"+code);
								});
							},
							function(error) {
								console.log("download error source " + error.source);
								console.log("download error target " + error.target);
								console.log("upload error code" + error.code);
								var options = {
										"delay" : 4000,
										"style" : "color:#fff;height:60px;line-height:20px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;",
										"position": "middle"
								}; 
								if(error.code == 2){
									justep.Util.hint("下载地址有误，请联系管理员", options);
								}else if(error.code == 3){
									justep.Util.hint("下载失败，请检查网络后重试", options);
								}else if(error.code == 1){
									justep.Util.hint("下载失败，政务云读写权限不足,建议开启所有权限", options);
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
					var url = dlios;
					//alert(uri);
					window.open(url,"_system");
//					window.location.href = url;
				}

			});
		};
	}
	Model.prototype.modelLoad = function(event){
		var me = this;				
		var apps = me.comp("appData");
		var name;
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "appsList",
			"async" : false,
			"params" : {
				userid : localStorage.getItem("id")
			},
			"success" : function(ret) {
				if(ret.state == 1){
					var obj = ret.apps;
					for (var i = 0; i < obj.length; i++) {
						apps.newData({
							defaultValues : [{
								ID : obj[i].ID.value,
								ApplicationName : obj[i].applicationname.value,                  //应用名
								ApplicationPathOut : obj[i].applicationpathout.value,           //安卓下载地址
								ApplicationPathIn : obj[i].applicationpathin.value,          //iOS下载地址
								ApplicationImagePath : obj[i].applicationimagepath.value,    //缩略图地址
								AppStatus : obj[i].app_status.value,                          //app审核状态
								type : obj[i].type.value,                                       //app类型
								Size : obj[i].size.value,                                         //app大小
								ApkPath : obj[i].apk_path.value,                                            //apk包名(gov.shhk.www)
								ApplicationMemo : obj[i].applicationmemo.value,                 //app介绍
								ApplicationSchema : obj[i].applicationschema.value,               //iOS url_scheme							
							}]

						});

						//刷新数据时，检测app是否存在
						name = obj[i].applicationname.value;
						appAvailability.check({
							ios: obj[i].applicationschema.value,         //URL Scheme
							android:obj[i].apk_path.value  //包名
						},
						success(name,i,obj[i].applicationschema.value,obj[i].apk_path.value),
						fail(name,i,obj[i].applicationpathout.value,obj[i].applicationpathin.value)
						);

					}	
				}else{
					/*document.getElementById(elementId)*/
					$("#"+me.getIDByXID("div13")).removeClass("hide");
					me.getElementByXid("div13").innerHTML = "<span style='font-size:18px;color:red;'>您没有足够的权限获取更多的应用</span><br /><span style='font-size:18px;color:red;'>更多情况请咨询管理人员</span>";
					/* me.getIDByXID("div13")).innerHTML = "您没有足够的权限获取更多的应用\n更多情况请咨询管理人员";*/
				}
			}
		});
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.modelActive = function(event){

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
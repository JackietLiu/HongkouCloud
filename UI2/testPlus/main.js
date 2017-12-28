define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!cordova-plugin-statusbar");
	require("cordova!cordova-plugin-network-information");
	require("$UI/system/components/bootstrap/carousel/carousel");
	require("$UI/system/components/justep/cordova/cordova");
	require("cordova!com.justep.cordova.plugin.qq");
	require("cordova!com.justep.cordova.plugin.weixin.v3");
	require("cordova!cordova-plugin-file");
	require("cordova!plugin.http.request");
	require("cordova!cordova-plugin-app-version");
	require("cordova!cordova-plugin-camera");
	/*var versionChecker = require("./appVersionChecker");*/
	var utils = require("$UI/system/components/justep/common/utils");

	var Model = function(){
		this.callParent();
		this.id;
		this.title;
		this.date;
		var list = "";
		var list2 = "";

	};

	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.showHint = function(evt){
		var options = {
				"position":"middle",
				"delay" : 1500,
				"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
		};
		justep.Util.hint(evt, options);
	};

	Model.prototype.openPage = function(event){
		var url = event.source.$domNode.attr('url');
		if(url.substr(0,1) == "/")
			url = '$UI' + url;
		justep.Shell.showPage(require.toUrl(url));
	};

	Model.prototype.div7Click = function(event){	 
		justep.Shell.showPage("noticeBorder");  
	};

	Model.prototype.onAppContent = function(event){
		this.comp("contents2").to("apps");
	};

	Model.prototype.onMyContent = function(event){
		this.comp("contents2").to("mine");
	};

	Model.prototype.myNoticeClick = function(event){
		var evt = "页面正在跳转中···";
		this.showHint(evt);
		justep.Shell.showPage("myNotice");
	};

	Model.prototype.myScheduleClick = function(event){
		var evt = "页面正在跳转中···";
		this.showHint(evt);
		justep.Shell.showPage("mySchedule");
	};

	Model.prototype.imgDataCustomRefresh = function(event){
		var me = this;
		var imgData = this.comp("imgData");
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadSoapHeader",
			"async" : false,
			"params" : {},
			"success" : function(result) {

				list = new Array();
				list2 = new Array();
				imgData.clear();
				for (var i = 0; i < 5; i++) {
					imgData.newData({
						defaultValues : [{
							"id" : result.id[i],
							"fileContent" : result.filecontent[i],
							"url" :result.url[i],
							"title" : result.title[i]
						}]
					});
					list.push(result.id[i]);
					list2.push(result.title[i]);
				}			
			}
		});
		//alert(event.source.count());
		var carousel = this.comp("carousel1");
		event.source.each(function(obj) {
			var fImgUrl = require.toUrl(obj.row.val("fileContent"));			
			var fUrl = require.toUrl(obj.row.val("url"));
			var title = obj.row.val("title");
			//alert(fImgUrl);
			if (me.comp('contentsImg').getLength() > obj.index) {			
				$(carousel.domNode).find("img").eq(obj.index).attr({
					"src" : fImgUrl,
					"pagename" : fUrl,
					"title" : title
				});
				if (obj.index == 0) {
					localStorage.setItem("index_BannerImg_title", title);
					localStorage.setItem("index_BannerImg_src", fImgUrl);
					localStorage.setItem("index_BannerImg_url", fUrl);
				}
			} else {
				carousel.add('<div class="title"> <span style="font-size:15px;" class="intro">"'+title+'"</span></div><div><a href="#"><img src="' + fImgUrl + '" class="tb-img1" bind-click="openPageClick" pagename="'+fUrl+'"/></div>');
			}
		});
	};

	Model.prototype.modelModelConstruct = function(event){
		var carousel = this.comp("carousel1");
		var fImgUrl = localStorage.getItem("index_BannerImg_src");
		if (fImgUrl === undefined) {
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : "",
				"pagename" : "./imageNews.w"
			});
		} else {
			var fUrl = localStorage.getItem("index_BannerImg_url");
			$(carousel.domNode).find("img").eq(0).attr({
				"src" : fImgUrl,
				"pagename" : fUrl
			});
		}
	};

	Model.prototype.openPageClick = function(event) {
		var me = this;
		/*
		 * 1、点击组件增加算定义属性：pagename 2、获取自定义属性，打开 对应页面
		 */
		var content = me.comp("contentsImg"); 
		//var data = me.comp("imgData");
		var pageName = event.currentTarget.getAttribute('pagename');
		var id;
		var title;
		for (var i = 0; i < content.getActiveIndex()+1; i++) {
			id = list[i];	
			title = list2[i];		
		}
		//alert(id);
		if (pageName){
			var params = {	
					url : pageName,	     
					id : id,
					title : title
			};
			justep.Shell.showPage("imageNews",params);
		}
	};

	Model.prototype.turnDialogOK = function(event){
		this.onMyContent();
	};

	Model.prototype.div24Click = function(event){
		var me = this;	
		//var emailUser = localStorage.getItem("emailUser");
		var userdata = me.comp("userData");
		var filter = "id='"+localStorage.getItem("id")+"'";
		userdata.setFilter("filter0",filter);
		userdata.refreshData();
		console.log(userdata.val("emailuser"));
		var emailUser = userdata.val("emailuser");
		if( emailUser === "undefined" || emailUser === "" || emailUser === null ) {						
			me.comp("turnDialog").show({
				"title" : "温馨提示",
				"message" : "您尚未绑定邮箱，是否跳转到绑定页面？"
			});
		}else {  
			var key = "N2eT6Ba7s";
			var cid = "ff8080815d844456015da1ff977a02a1";
			var emailUserName = emailUser.split("@")[0];
			var domain = "hkq.gov.cn";
			var sign =  "cid="+cid+"&domain="+domain+"&uid="+emailUserName+"&key="+key+"";
			//var src = "http://mm.263.com/wm2e/mobile/mobileLogin/mobileLoginAction_mobileLogin.do?usr="+emailUser+"&pass="+emailPass+"";
			//alert(emailUserName);
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou", 
				"action" : "md5",
				"async" : false,
				"params" : {md5String:sign},
				"success" : function(ret) {
					var md5 = ret.md5;
					var src = "http://pcc.263.net/PCC/263mail.do?cid="+cid+"&domain="+domain+"&uid="+emailUserName+"&sign="+md5+"";
					window.open(src, '_system', 'location=no');	
					//cordova.InAppBrowser
				}
			});
		}	  
	};

	Model.prototype.personDataCustomRefresh = function(event){

	};

	Model.prototype.exitDialogOK = function(event){
		navigator.app.exitApp();
	};

	Model.prototype.button2Click = function(event){
		this.comp("exitDialog").show();
	};

	Model.prototype.button1Click = function(event){
		this.comp("logoutDialog").show();	
	};

	Model.prototype.logoutDialogOK = function(event){
		localStorage.clear();	
		justep.Util.hint("注销成功");
		window.location.href = "./index.w";

	};

	Model.prototype.div1Click = function(event){
		justep.Shell.showPage("news");
	};

	Model.prototype.div35Click = function(event){
		justep.Shell.showPage("govFile");
	};	

	Model.prototype.div36Click = function(event){
		justep.Shell.showPage("dynamic");
	};

	Model.prototype.div40Click = function(event){
/*		var username = localStorage.getItem("username");
		var src="http://218.242.160.240/HKWGTJ/main.aspx?userId="+username+"";
		cordova.InAppBrowser.open(src, '_system', 'location=yes');*/
		justep.Shell.showPage("webContent");
	};

	Model.prototype.div9Click = function(event){
		justep.Shell.showPage("empty");
	};

	Model.prototype.div37Click = function(event){
		justep.Shell.showPage("netPath");
	};

	Model.prototype.appsbtnClick = function(event){
		//this.comp("panel1").setVisible('top', false);
		$("#"+this.getIDByXID("settingBtn")).addClass("hide");
		this.comp("titleBar1").set("title","应用");
		StatusBar.backgroundColorByHexString("#37b9ed");
	};

	Model.prototype.indexActive = function(event){
//		this.comp("panel1").setVisible('top', true);
		StatusBar.backgroundColorByHexString("#37b9ed");
	};

	Model.prototype.modelActive = function(event){
		StatusBar.backgroundColorByHexString("#37b9ed");
	};

	Model.prototype.chatbtnClick = function(event){
		var url = "$UI/chat/wex5/index.w";
		window.location.href=require.toUrl(url);
		//justep.Shell.showPage("chatLogin");
		
	};

	Model.prototype.photoBtnClick = function(event){
		var me = this;
		var id = window.localStorage.getItem("id");
		me.comp("chooseOver").hide();
		document.addEventListener("deviceready", onDeviceReady, false);
		function onDeviceReady(){
			navigator.camera.getPicture(onLoadImageSuccess, onLoadImageFail, {
				destinationType:navigator.camera.DestinationType.DATA_URL,//DATA_URL FILE_URI
				quality:50,
				targetWidth:500,
				targetHeight:500,
				saveToPhotoAlbum:true//将拍照好照片存储到本地 saveToPhotoLibrary
			});
			//拍照成功后回调
			function onLoadImageSuccess(imageData){//imageURI imageData
				localStorage.setItem("headimage","data:image/jpeg;base64,"+imageData);
				//一定要将获取到的imageData转换成64位编码的图像数据,否则上传失败			
				me._url = "data:image/jpeg;base64,"+imageData;
				var smallImage = document.getElementById(me.getIDByXID('showImage'));//我的页面头像
				var image7 = document.getElementById(me.getIDByXID('image7'));//侧边栏头像
				//alert(me._url);
				$(me.getElementByXid("photoBtn")).hide();

				var params = {
						"image" : me._url,
						"PicName" : id+'img.jpg',
						"id" : id
				};
				justep.Baas.sendRequest({
					"url" : "/justep/lawrance", // servlet请求地址
					"action" : "lawrance", // action
					"params" : params, // action对应的参数
					"success" : function(data) {// 请求成功后的回调方法
						if (data.success == "上传文件成功！") {	
							justep.Baas.sendRequest({
								"url" : "/hongkou/hongkou",
								"action" : "updateHeaderImg",
								"async" : false,
								"params" : {
									"id" : id,
									"url" : me._url
								},
								"success" : function(ret) {
									if(ret.state == 1){									
										// 取消隐藏的图像元素
										smallImage.style.display = 'block';
										smallImage.src = me._url;
										image7.src = me._url;
										localStorage.setItem("headimage", me._url);
									}else{
										smallImage.style.display = 'none';
										$(me.getElementByXid("photoBtn")).show();
										justep.Util.hint({"text":"头像上传失败，请重试","type":"danger"});
									}
								}
							});
						}
					}
				});	
			}
			function onLoadImageFail(error){
				alert("您已取消拍照");
			}
		}
	};

	Model.prototype.button5Click = function(event){
		var me = this;
		var id = window.localStorage.getItem("id");
		me.comp("chooseOver").hide();
		document.addEventListener("deviceready", onDeviceReady, false);
		function onDeviceReady(){
			navigator.camera.getPicture(onLoadImageSuccess, onLoadImageFail, {
				quality:50,
				targetWidth:500,
				targetHeight:500,
				destinationType : navigator.camera.DestinationType.DATA_URL,
				sourceType : navigator.camera.PictureSourceType.PHOTOLIBRARY,
				saveToPhotoAlbum:true//将拍照好照片存储到本地 saveToPhotoLibrary
			});
			function onLoadImageSuccess(imageData) {
				localStorage.setItem("headimage","data:image/jpeg;base64,"+imageData);
				me._url = "data:image/jpeg;base64,"+imageData;				
				var smallImage = document.getElementById(me.getIDByXID('showImage'));
				var image7 = document.getElementById(me.getIDByXID('image7'));
				// 取消隐藏的图像元素
				/*				smallImage.style.display = 'block';
				smallImage.src = me._url;*/
				//alert(me._url);
				$(me.getElementByXid("photoBtn")).hide();
				var params = {
						"image" : me._url,
						"PicName" : id+'img.jpg',
						"id" : id
				};
				justep.Baas.sendRequest({
					"url" : "/justep/lawrance", // servlet请求地址
					"action" : "lawrance", // action
					"params" : params, // action对应的参数
					"success" : function(data) {// 请求成功后的回调方法

						if (data.success == "上传文件成功！") {	
							justep.Baas.sendRequest({
								"url" : "/hongkou/hongkou",
								"action" : "updateHeaderImg",
								"async" : false,
								"params" : {
									"id" : id,
									"url" : me._url
								},
								"success" : function(ret) {
									if(ret.state == 1){
										// 取消隐藏的图像元素
										smallImage.style.display = 'block';
										smallImage.src = me._url;
										image7.src = me._url;
										localStorage.setItem("headimage", me._url);
										justep.Util.hint("头像上传成功");
									}else{
										smallImage.style.display = 'none';
										$(me.getElementByXid("photoBtn")).show();
										justep.Util.hint({"text":"头像上传失败，请重试","type":"danger"});

									}
								}
							});
						} else {
							justep.Util.hint({"text":"未知错误","type":"danger"});
						}
					}
				});	
			}
			function onLoadImageFail(message) {
				return message;
			}
		}    
	};

	Model.prototype.modelLoad = function(event){ 
		var me = this;
		var smallImage = document.getElementById(me.getIDByXID('showImage'));
		var iTitle = localStorage.getItem("index_BannerImg_title");
		document.getElementById(this.getIDByXID("span28")).innerHTML = iTitle;
		var id = localStorage.getItem("id");
		var user = me.comp("userData");
		var filter = "id ='"+id+"'";
		user.setFilter("filter0",filter);
		user.refreshData();

		if( user.val('emailuser') === null ||  user.val('emailuser') === undefined ||  user.val('emailuser')=== "") {
			me.comp("bindEmail").set({
				label : "绑定邮箱" 
			});
		}else{
			document.getElementById(me.getIDByXID("span21")).innerHTML = user.val("emailuser");
			document.getElementById(me.getIDByXID("output1")).innerHTML = user.val("emailuser");
			me.comp("bindEmail").set({
				label : "解除绑定"
			});
		}
		if(user.val('headerimg') === undefined ||  user.val('headerimg') === null ||  user.val('headerimg')=== ""){
			smallImage.style.display = 'none';
			$(me.getElementByXid("photoBtn")).show();
		}else{

			// 取消隐藏的图像元素
			smallImage.style.display = 'block';
			smallImage.src = localStorage.getItem("headimage");
			//查看头像
			/*$(me.getElementByXid("imgsrc")).attr("href",localStorage.getItem("headimage"));*/
			//alert("./"+id+"/"+id+"img.jpg");
			$(me.getElementByXid("photoBtn")).hide();		
		}
		if(justep.Browser.isIOS){
			$(me.getElementByXid("button2")).hide();
			$(me.getElementByXid("col2")).hide();
		}
		var ct = navigator.connection.type;
		if (ct != "none") {

		} else {
			// 警告用户没有网络连接无法进行
			var options = {
					"delay" : 3000,
					"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
			};
			justep.Util.hint("网络无连接，请开启网络后重试", options);
		}   
		cordova.getAppVersion.getVersionNumber(function (result) {
			document.getElementById(me.getIDByXID("version")).innerHTML = result;
		},function () {
			justep.Util.hint("版本获取失败");
		});
		// 添加事件
		justep.Shell.on("onMyContent", this.onMyContent, this);

		StatusBar.backgroundColorByHexString("#37b9ed");


	}; 


	// 卸载事件
	Model.prototype.modelUnLoad = function(event) {
		justep.Shell.off("onMyContent", this.onMyContent);

	};

	Model.prototype.showImageClick = function(event){
		this.comp("chooseOver").show();
	};
	Model.prototype.button6Click = function(event){
		this.comp("exitDialog").show();
	};
	Model.prototype.btnSetPasswordClick = function(event){
		/*	var params = {set:"2","word" :"设置新的手势密码"};
		justep.Shell.showPage("locker",params);	*/
		justep.Shell.showPage("verif");
	};

	Model.prototype.subMitBtnClick = function(event){
		var me = this;
		if(event.source.label=="解除绑定"){
			me.comp("outBindEmail").show({
				"message" : "是否要解除绑定您的邮箱，将失去邮箱的功能？"
			});
		}else {
			me.comp("popOver1").show();
		}
	};
	Model.prototype.sureBtnClick = function(event){
		var me = this;
		var pe = localStorage.getItem("id");
		var email = me.comp("input1").val() + document.getElementById(me.getIDByXID("label8")).innerHTML;
		var email_Pass = me.comp("input2").val();
		if($.trim(email)!=="" && $.trim(email_Pass) !==""){
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "newMessage",
				"async" : false,
				"params" : {
					email : email,
					emailPass : email_Pass,
					id : pe
				},
				"success" : function(ret) {
					if(ret.state == 1){
						me.comp("popOver1").hide();
						me.comp("input1").clear();
						me.comp("input2").clear();
						//personData.refreshData();
						localStorage.setItem('emailUser',email );
						me.comp("messageDialog").show({
							"title" : "温馨提示",
							"message" : "绑定邮箱成功"
						});
						me.comp("bindEmail").set({
							label : "解除绑定"
						});
						document.getElementById(me.getIDByXID("span21")).innerHTML = email;
						document.getElementById(me.getIDByXID("output1")).innerHTML = email;
					}else{
						me.comp("falseDialog").show({
							"title" : "警告",
							"message" : "未知错误"
						});
					}
				}
			});
		} else {
			me.comp("falseDialog").show({
				"title" : "温馨提示",
				"message" : "请不要将邮箱账号或密码空置"
			});
		}
	};

	Model.prototype.outBindEmailOK = function(event){
		var me = this;
		var id = localStorage.getItem("id");
		if(me.comp("bindEmail").label == "绑定邮箱"){
			me.comp("popOver1").show();
		}else {
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "newMessage",
				"async" : false,
				"params" : {
					email : "",
					emailPass : "",
					id : id
				},
				"success" : function(ret) {
					if(ret.state == 1){
						localStorage.removeItem("emailUser");
						document.getElementById(me.getIDByXID("span21")).innerHTML = "";
						document.getElementById(me.getIDByXID("output1")).innerHTML = "";
						me.comp("falseDialog").show({
							"title" : "温馨提示",
							"message" : "解除绑定成功，您将无法使用邮箱功能！"
						});
						me.comp("bindEmail").set({
							label : "绑定邮箱"
						});
					}else{
						me.comp("falseDialog").show({
							"title" : "警告",
							"message" : "未知错误"
						});
					}
				}
			});
		}
	};

	Model.prototype.button3Click = function(event){
		this.comp("logoutDialog").show();
	};

	Model.prototype.falseDialogOK = function(event){
		//this.modelLoad(event);
	};

	/*	Model.prototype.button8Click = function(event){
		if(justep.Browser.isAndroid){
			var filePath = "file:///storage/emulated/0/hongkou/shhk116.png";//'file:///storage/emulated/0/hongkou/'+ row.val('fFileName');
			var uri = encodeURI("http://116.236.228.21:8859/hongkou/shhk116.png");
			//justep.Util.hint('正在下载……'); 
			// alert(row.val("fDownloadPath"));
			var fileTransfer = new FileTransfer();
			fileTransfer.download(                 //调用对象的下载方法，开始下载
					uri,
					filePath,
					function(entry) {
						justep.Util.hint("保存成功");
						var localUrl = "file:///storage/emulated/0/hongkou/shhk116.png";
						var open = cordova.plugins.disusered.open;
						function success() {
							justep.Util.hint('正在打开……');
						}
						function error(code) {
							if (code === 1) {
								//alert('是否存在可以打开该类型文件的app？\n如不存在，可到应用市场下载关联软件');
							} else {
								justep.Util.hint('未知错误');
							}
						}
						open(localUrl, success, error);		//安卓打开文件，ios不适用		
						 downLoadBtn.hide();
					},
					function(error) {  //出错回调函数
						console.log("download error source " + error.source);
						console.log("download error target " + error.target);
						console.log("upload error code" + error.code);
					},
					false,
					{
						headers: {
							"Authorization": "Basic dGVzdHVzZXJuYW1lOnRlc3RwYXNzd29yZA=="
						}
					});   
		}
	};*/

	Model.prototype.media5Click = function(event){
		this.comp("ewmOver").show();
	};

	Model.prototype.button7Click = function(event){
		this.comp("ewmOver").hide();

		this.comp("sharePop").show();
	};

	Model.prototype.qqClick = function(event){
		this.comp("sharePop").hide();
		function success(result) {
			justep.Util.hint("已完成分享");

		}
		function error(result) {
			var text = "";
			if(JSON.stringify(result) == "\"cancelled by user\""){
				text = "您已取消分享";
			}else {
				text = JSON.stringify(result).replace("\"", "").replace("\"", "");
			}
			justep.Util.hint({
				"text" : text,
				"type" : "danger",
				"position" : "middle",
				"delay" : 2000
			});
		}
		var args = {};

		args.url = utils.getShareUrl( "http://116.236.228.21:8859/hongkou/shhk116.png");
		args.title =  "软件二维码";
		args.description = "虹口区移动政务平台二维码分享";
		args.imageUrl = "http://116.236.228.21:8859/hongkou/shhk116.png";
		args.appName = "share";	
		navigator.QQ.shareToQQ(success, error, args);
	};

	Model.prototype.kongjianClick = function(event) {
		this.comp("sharePop").hide();
		function success(result) {
			justep.Util.hint("已完成分享");

		}
		function error(result) {
			var text = "";
			if(JSON.stringify(result) == "\"QZone share is cancelled\""){
				text = "您已取消分享";
			}else {
				text = JSON.stringify(result).replace("\"", "").replace("\"", "");
			}
			justep.Util.hint({
				"text" : text,
				"type" : "danger",
				"position" : "middle",
				"delay" : 20000
			});
		}
		var args = {};
		args.url = 'http://116.236.228.21:8859/hongkou/shhk116.png';
		args.title =  "软件二维码";
		args.description = "虹口区移动政务平台二维码分享";
		args.imageUrl = ['http://116.236.228.21:8859/hongkou/shhk116.png'];
		args.appName = "";

		navigator.QQ.shareToQzone(success, error, args);
	};

	Model.prototype.weixinClick = function(event) {
		this.comp("sharePop").hide();
		function success(result) {
			//alert(JSON.stringify(result));
			justep.Util.hint("已完成分享");
		}
		function error(result) {
			var text = "";
			if(JSON.stringify(result) == "\"cancelled by user\""){
				text = "您已取消分享";
			}else {
				text = JSON.stringify(result).replace("\"", "").replace("\"", "");
			}
			justep.Util.hint({
				"text" : text,
				"type" : "danger",
				"position" : "middle",
				"delay" : 2000
			});
		}
		navigator.weixin.share({
			message : {
				title : "软件二维码",
				description : "虹口区移动政务平台二维码分享",
				mediaTagName : "Media Tag Name(optional)",
				thumb : "http://116.236.228.21:8859/hongkou/shhk116.png",
				media : {
					// type: weixin.Type.WEBPAGE, // webpage
					webpageUrl : "http://116.236.228.21:8859/hongkou/shhk116.png"
						// webpage
				}
			},
			scene : navigator.weixin.Scene.SESSION
		}, success, error);
	};

	Model.prototype.pengyouquanClick = function(event) {
		this.comp("sharePop").hide();
		function success(result) {
			justep.Util.hint("已完成分享");
		}
		function error(result) {
			var text = "";
			if(JSON.stringify(result) == "\"cancelled by user\""){
				text = "您已取消分享";
			}else {
				text = JSON.stringify(result).replace("\"", "").replace("\"", "");
			}
			justep.Util.hint({
				"text" : text,
				"type" : "danger",
				"position" : "middle",
				"delay" : 2000
			});
			//alert(JSON.stringify(result));
		}
		navigator.weixin.share({
			message : {
				title : "软件二维码",
				description : "虹口区移动政务平台二维码分享",
				mediaTagName : "Media Tag Name(optional)",
				thumb : "http://116.236.228.21:8859/hongkou/shhk116.png",
				media : {
					// type: weixin.Type.WEBPAGE, // webpage
					webpageUrl : "http://116.236.228.21:8859/hongkou/shhk116.png"
						// webpage
				}
			},
			scene : navigator.weixin.Scene.TIMELINE
		}, success, error);
	}; 

	Model.prototype.div20Click = function(event){
		/*var evt = "功能正在开发中···";
		this.showHint(evt);*/
		justep.Shell.showPage("favorite");
	};

	//检查版本
	Model.prototype.media9Click = function(event){
		var i=0;
		var versionChecker = require("$UI/system/components/justep/versionChecker/versionChecker");
		versionChecker.check(i);
	};

	Model.prototype.indexbtnClick = function(event){
		$("#"+this.getIDByXID("settingBtn")).removeClass("hide");
		this.comp("titleBar1").set("title","首页");
		StatusBar.backgroundColorByHexString("#37b9ed");
	}; 

	Model.prototype.div32Click = function(event){
		justep.Shell.showPage("headimg");
		//var src=require.toUrl('./viewHead.w');
	}; 

	Model.prototype.minebtnClick = function(event){
		$("#"+this.getIDByXID("settingBtn")).addClass("hide");
		this.comp("titleBar1").set("title","我的信息");
	}; 


	return Model;
});

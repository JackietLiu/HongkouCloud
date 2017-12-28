/*define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!plugin.http.request");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.button2Click = function(event){	              

	};
	Model.prototype.modelLoad = function(event){
		var me = this;
		me.comp("appList").refresh(true);
	


	};

	Model.prototype.pluginsDataCustomRefresh = function(event){
		var httpReq = new plugin.HttpRequest();
		var sql = "SELECT * FROM Application Where type = '02' and App_Status = '审核'";
		//$row.val('type') == '02' && $row.val('App_Status') == '审核'
		httpReq.post("http://116.236.228.21:8899/WebService/WebService_ds.asmx/GetDataBySql", {
			sql : sql		
		},function(err, data) {
			alert(data);
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "getXml3",
				"async" : false,
				"params" : {xml:data},
				"success" : function(ret) {
					var value = ret.title;
					var obj = eval(value);

					event.source.clear();
					for (var i = 0; i < obj.length; i++) {
						event.source.newData({
							defaultValues : [{
								ID : obj[i].ID,
								ApplicationName : obj[i].ApplicationName,
								ApplicationPathOut : obj[i].ApplicationPathOut,
								ApplicationImagePath : obj[i].ApplicationImagePath, 
								AppStatus : obj[i].App_Status,  
								type : obj[i].type,
								Size : obj[i].Size,
								ApkPath : obj[i].Apk_Path,
								ApplicationMemo : obj[i].ApplicationMemo

							}]

						});

					}	

				}
			});		  
		});	
	};

	Model.prototype.insertSuccessDialogOK = function(event){
		justep.Shell.showPage("main");
	};



	return Model;
});*/
define(function(require){
	var $ = require("jquery");
	require("cordova!plugin.http.request");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	Model.prototype.pluginsDataCustomRefresh = function(event){
	var httpReq = new plugin.HttpRequest();
		var sql = "SELECT * FROM Application";
		httpReq.post("http://116.236.228.21:8899/WebService/WebService_ds.asmx/GetDataBySql", {
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
					var obj = eval(value);

					event.source.clear();
					for (var i = 0; i < obj.length; i++) {
						event.source.newData({
							defaultValues : [{
								ID : obj[i].ID,
								ApplicationName : obj[i].ApplicationName,
								ApplicationPathOut : obj[i].ApplicationPathOut,
								ApplicationImagePath : obj[i].ApplicationImagePath, 
								AppStatus : obj[i].App_Status,  
								type : obj[i].type,
								Size : obj[i].Size,
								ApkPath : obj[i].Apk_Path,
								ApplicationMemo : obj[i].ApplicationMemo

							}]

						});

					}	

				}
			});		  
		});	
	};
	Model.prototype.addToMainBtnClick = function(event){
		var me = this;
		var row = event.bindingContext.$object;
		var type = 1;
		//var aID = row.val("ID");
		var appName = row.val("ApplicationName");
		var url = row.val("ApplicationPathOut");
		var image = row.val("ApplicationImagePath");


		var httpReq = new plugin.HttpRequest();
		var sql = "INSERT INTO indexApp(appName,url,image,type) VALUES('"+appName+"','"+url+"','"+image+"',"+type+")";
		//document.write(sql);
		httpReq.post("http://116.236.228.21:8899/WebService/WebService_ds.asmx/CUDBySql", {
			sql : sql		
		},function(err, data) {
			//alert(data);			
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "getXml3",
				"async" : false,
				"params" : {xml:data},
				"success" : function(ret) {				    
					if(ret.title === "1"){
						event.source.set({
							"icon" : "icon-ios7-checkmark",
							"disabled" : true
						});
						me.comp("messageDialog").show({
							title : "提示：",
							message : "插件已成功添加至首页\n是否前往？"
						});
					}
				}
			}); 		  
		});

	};
		Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);

	};
	Model.prototype.button2Click = function(event){

	};
	return Model;
});

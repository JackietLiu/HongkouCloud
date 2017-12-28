define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		this.row;

	};
	Model.prototype.modelLoad = function(event){

	};
	Model.prototype.fileContentActive = function(event){

		var me = this;
		var id = localStorage.getItem("id");  
		var user = this.comp("personData");
		var filter = "id ='"+id+"'";
		user.setFilter("filter0",filter);
		user.refreshData();
		justep.Baas.sendRequest({
			"url" : "/justep/attachment",
			"action" : "getTotalFileSize",
			"async" : false,
			"params" : {
				ownerID : id
			},
			"success" : function(ret) {
				var total;
				var totalSize = document.getElementById(me.getIDByXID("total")).innerHTML;
				var fileSize; 

				if(ret.state ===1){				
					fileSize =ret.totalSize;
					total = Number(fileSize.toString().match(/^\d+(?:\.\d{0,2})?/));				 
					var leaveSize = totalSize-total;
					document.getElementById(me.getIDByXID("span42")).innerHTML = total;
					document.getElementById(me.getIDByXID("span45")).innerHTML = leaveSize;
					var uploader = me.comp("attachmentSimple").uploader;
//					判断只要特定的文件类型可以上传
					uploader.on('onFileSelected',function(event){
						/*	alert(event.file.size/1024/1024);*/
//						限制大小
						if (event.file.size/1024/1024 > leaveSize) {
							justep.Util.hint("上传的文件大小超过网盘大小");
							event.cancel = true;
							return;
						}					    					 
					});

					var process = total/totalSize*100;
					// document.getElementById(me.getIDByXID("charts")).innerHTML =  "<div class=\"progress\"><div class=\"progress-bar\" style=\"width:"+process+"%; background:#37b9ed;border-radius:20px;\"><div class=\"progress-value\">"+total+"MB/"+totalSize+"MB</div></div></div>";
					document.getElementById(me.getIDByXID("charts")).innerHTML = '<div class="progress" style="border-radius:20px;"><div class="progress-bar" style="width:'+process+'%; background:#37b9ed;border-radius:20px;"><div class="progress-value" style=" text-align:center; font-size: 15px;color: #fff;border-top: none;position: absolute;left:40%;">'+total+'MB/'+totalSize+'MB</div></div></div>';					
				}else{

					document.getElementById(me.getIDByXID("charts")).innerHTML = '<div class="progress" style="border-radius:20px;"><div class="progress-bar" style="width:0%; background:#37b9ed;"><div class="progress-value" style=" text-align:center; font-size: 15px;color: #fff;border-top: none;position: absolute;left:40%;">0MB/'+totalSize+'MB</div></div></div>';					
				}

			}
		});

	};
	Model.prototype.classContentActive = function(event){
		var id = localStorage.getItem("id");
		var paiData = this.comp('paiData');
		var filter = "fUser='"+id+"'";	
		paiData.setFilter("filter0",filter);
		paiData.refreshData();	
	};
	Model.prototype.toFullUrl = function(url){
		if(this._isHttpFile(url)){
			return url;
		}
		return (location.origin ? location.origin : (location.protocol + "//" + location.host)) + require.toUrl(url);
	};

	Model.prototype.button3Click = function(event){
		var data = this.comp('paiData');		
		var row=data.getCurrentRow();	
		var jsonList = eval("(" + row.val('fDownloadPath') + ")");
		var ownerID = jsonList[0].ownerID;    
		var realFileName = jsonList[0]["realFileName"];
		var storeFileName = jsonList[0]["storeFileName"];
		this.comp("attachmentSimple").downloadFile(realFileName,storeFileName,ownerID);
	};
	Model.prototype.button2Click = function(event){
		var data = this.comp('paiData');		
		var row=data.getCurrentRow();
		var jsonList = eval("(" + row.val('fDownloadPath') + ")");
		var ownerID = jsonList[0].ownerID;    
		var storeFileName = jsonList[0]["storeFileName"];
		this.comp("attachmentSimple").deleteFile(storeFileName,ownerID);

	};
	Model.prototype.dataValueChanged = function(event){
		/*
		 * 1、获取上传，组合预览地址
		 * 2、生成上传的fID
		 * 3、将上传信息保存到paiData
		 */ 
		var me = this;
		var id = localStorage.getItem("id");   
		var data = this.comp('data');
		var paiData = this.comp('paiData');	
		var row=data.getCurrentRow();
		var jsonList = eval("(" + row.val('fileName') + ")");
		var ownerID = jsonList[0]["ownerID"];
		var realFileName = jsonList[0]["realFileName"];
		var storeFileName = jsonList[0]["storeFileName"];
		var operateType = "preview";//预览
		var previewUrl=this.comp("attachmentSimple").getFileUrl(realFileName,storeFileName,ownerID,operateType);
		var s = [];  
		var hexDigits = "0123456789abcdef";  
		for (var i = 0; i < 36; i++) {  
			s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);  
		}  
		s[14] = "4";  // bits 12-15 of the time_hi_and_version field to 0010  
		s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1);  // bits 6-7 of the clock_seq_hi_and_reserved to 01  
		s[8] = s[13] = s[18] = s[23] = "";  

		var fid = s.join("");  
		//alert(storeFileName+ownerID);
		justep.Baas.sendRequest({
			"url" : "/justep/attachment",
			"action" : "getFileSize",
			"async" : false,
			"params" : {
				ownerID : ownerID,
				storeFileName : storeFileName
			},
			"success" : function(ret) {

				var fileSize;
				fileSize = ret.size/1024;
				fileSize =	Number(fileSize.toString().match(/^\d+(?:\.\d{0,2})?/));
				var options = {
						defaultValues : [ {
							fID : fid,//id
							fFileName : realFileName,//图片名
							fPreviewPath : previewUrl,//预览地址
							fDownloadPath : JSON.stringify(jsonList),//下载时需要的json串
							fCreateTime : justep.Date.toString(new Date(),'yyyy-MM-dd hh:mm:ss'),//上传时间
							fDescription : "",
							fUser:ownerID,
							fFileSize : fileSize
						} ]
				};			
				paiData.newData(options);
				paiData.saveData();
				data.refreshData();
				var filter = "fUser='"+ownerID+"'";
				paiData.setFilter("filter0",filter);
				paiData.refreshData();
				me.fileContentActive();
			}
		});

	};
	//刷新paiData数据
	Model.prototype.modelActive = function(event){
		this.comp('paiData').refreshData();
	};

	Model.prototype.delbtnClick = function(event){ 	
		this.row = event.bindingContext.$object;					
		/*	var row=data.getCurrentRow();	*/
		this.comp("messageDialog2").show();
	};

	Model.prototype.downloadbtnClick = function(event){

		var row = event.bindingContext.$object;
		var jsonList = eval("(" + row.val('fDownloadPath') + ")");		
		var ownerID = jsonList[0].ownerID; 
		var realFileName = jsonList[0]["realFileName"];
		var storeFileName = jsonList[0]["storeFileName"];
		var downloadUrl = this.comp("attachmentSimple").getFileUrl(realFileName,storeFileName,ownerID,"download");
		var uri = encodeURI((location.origin ? location.origin : (location.protocol + "//" + location.host)) + require.toUrl(downloadUrl));
		//alert(uri);
		window.open(uri,"_system");

	};


	Model.prototype.messageDialog2OK = function(event){

		var data = this.comp('paiData'); 
		var jsonList = eval("(" + this.row.val('fDownloadPath') + ")");
		var ownerID = jsonList[0].ownerID;    
		var storeFileName = jsonList[0]["storeFileName"];
		//alert(storeFileName+ownerID);
		justep.Baas.sendRequest({
			"url" : "/justep/attachment",
			"action" : "deleteFile",
			"async" : false,
			"params" : {
				ownerID : ownerID,
				storeFileName : storeFileName
			},
			"success" : function(ret) {
				data.deleteData(this.row);
				data.saveData();
			}
		});
	};



	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};



	return Model;
});

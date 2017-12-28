define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	/*
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var shellImpl = require('$UI/system/lib/portal/shellImpl');*/
	require("cordova!plugin.http.request");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelLoad = function(event){	
	
	};

	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var data = {
				id : row.val('id'),
				title : row.val('title')
		};
		justep.Shell.showPage("govFileDetail", data);
	};
	Model.prototype.govermentFileActive = function(event){

		

		var me = this;
		var list = this.comp("govementFileData"); 
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadFileList",
			"async" : false,
			"params" : {
				//categoryNum : "001007001"
				categoryNum : "002001003001"
			},
			"success" : function(ret) {
				var ids = ret.id;
				//alert(JSON.stringify(ret));
				list.clear();

				for (var i = 0; i < ids.length; i++) {
					var str = ret.date[i].toString();						      
					var date = new Date(str);
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					m = m < 10? ('0' + m) : m;
					var d = date.getDate();
					d = d < 10 ? ('0' + d) : d;
					var dateTime = y + '-' + m + '-' + d;
					list.newData({
						defaultValues : [{
							"id" : ret.id[i],
							"title" : ret.title[i],
							"date" : dateTime
						}] 

					});
				}
				me.comp("govermentFileList").refresh(true);
			}
		});

	};
	Model.prototype.partmentFileActive = function(event){
		var me = this;
		var list = this.comp("departmentFileData");
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadFileList",
			"async" : false,
			"params" : {
				categoryNum : "002001003002"
			},
			"success" : function(ret) {
				var ids = ret.id;
				list.clear();
				for (var i = 0; i < ids.length; i++) {
					var str = ret.date[i].toString();
					//alert(str);						      
					var date = new Date(str);
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					m = m < 10? ('0' + m) : m;
					var d = date.getDate();
					d = d < 10 ? ('0' + d) : d;
					var dateTime = y + '-' + m + '-' + d;
					list.newData({
						defaultValues : [{
							"id" : ret.id[i],
							"title" : ret.title[i],
							"date" : dateTime
						}]

					});
				}
				me.comp("departmentFileList").refresh(true);
			}
		});
	};
	Model.prototype.blockFileActive = function(event){
		var me = this;
		var list = this.comp("blockFileData");
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadFileList",
			"async" : false,
			"params" : {
				categoryNum : "002001003003"
			},
			"success" : function(ret) {
				var ids = ret.id;
				list.clear();
				for (var i = 0; i < ids.length; i++) {
					var str = ret.date[i].toString();						      

					var date = new Date(str);
					var y = date.getFullYear();
					var m = date.getMonth()+1;
					m = m < 10? ('0' + m) : m;
					var d = date.getDate();
					d = d < 10 ? ('0' + d) : d;
					var dateTime = y + '-' + m + '-' + d;
					list.newData({
						defaultValues : [{
							"id" : ret.id[i],
							"title" : ret.title[i],
							"date" : dateTime
						}]

					});
				}
				me.comp("blockFileList").refresh(true);
			}
		});
	};

	Model.prototype.showHint = function(){
		var options = {
				"position":"middle",
				"delay" : 1500,
				"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
		};
		justep.Util.hint("已完成加载···", options);
	};

	Model.prototype.scrollView1PullDown = function(event){
		this.govermentFileActive();
		this.showHint();
	};


	Model.prototype.scrollView2PullDown = function(event){
		this.partmentFileActive();
		this.showHint();
	};


	Model.prototype.scrollView3PullDown = function(event){
		this.blockFileActive();
		this.showHint();
	};


	return Model;
});
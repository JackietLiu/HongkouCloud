define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var utils = require("$UI/system/components/justep/common/utils");
	require("cordova!plugin.http.request");
	var Model = function(){ 
		this.callParent();
	};
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var date = row.val("date");
		var title = row.val("title");
		//var content = row.val("content");	
		/*	var dialog = this.comp("newsDetail");
		var src = require.toUrl("./newsDetail.w");*/
		var params = {		
				date : date,
				title : title,
				id : id	
		};	
		/*dialog.open({
			src : src,
			data : params
		});*/
		justep.Shell.showPage("newsDetail", params);
	};

	Model.prototype.li3Click = function(event){

	};

	Model.prototype.hongkouNewsActive = function(event){
		var me = this;
		var list = this.comp("hongkouData");
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadNewsList",
			"async" : false,
			"params" : {
				categoryNum : "002003"
			},
			"success" : function(ret) {
				var ids = ret.id;
				//alert(JSON.stringify(ret));
				list.clear();
				/*,"content":ret.content[i]*/
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
				me.comp("list1").refresh(true);
			}
		});
	};

	Model.prototype.partmentDymActive = function(event){
		var me = this;
		var list = this.comp("departmentData");

		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadNewsList",
			"async" : false,
			"params" : {
				categoryNum : "002004"
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
				me.comp("list2").refresh(true);
			}
		});

	};

	Model.prototype.blockNewsActive = function(event){	
		var me = this;
		var list = this.comp("blockData");

		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadNewsList",
			"async" : false,
			"params" : {
				categoryNum : "002005"
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
				me.comp("list3").refresh(true);
			}
		});

	};



	Model.prototype.modelLoad = function(event){	
	

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
		this.hongkouNewsActive();
		this.showHint();

	};



	Model.prototype.scrollView2PullDown = function(event){
		this.partmentDymActive();
		this.showHint();
	};



	Model.prototype.scrollView3PullDown = function(event){
		this.blockNewsActive();
		this.showHint();
	};



	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};



	return Model;
});
define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep"); 
	require("cordova!plugin.http.request");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var date = row.val("time");
		var title = row.val("title");
		/*var content = row.val("content");*/	
		/*		var dialog = this.comp("noticeDetail");
		var src = require.toUrl("./noticeDetail.w");*/
		var params = {		
				date : date,
				title : title,
				id : id	
		};	
		/*dialog.open({
			src : src,
			data : params
		});*/
		justep.Shell.showPage("noticeDetail", params);

	};	

	Model.prototype.modelLoad = function(event){


	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.scrollView1PullDown = function(event){
		this.noticeFileActive();
		var options = {
				"position":"middle",
				"delay" : 1500,
				"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
		};
		justep.Util.hint("已完成加载···", options);

	};
	Model.prototype.noticeFileActive = function(event){
		var list = this.comp("listData");
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadNewsList",
			"async" : false,
			"params" : {
				categoryNum : "002002"
			},
			"success" : function(ret) {
				var ids = ret.id;
				//alert(JSON.stringify(ids));
				list.clear();
				//,"content":ret.content[i]
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
							"time" : dateTime
						}] 

					});
				}

			}
		});
	};
	
	Model.prototype.button8Click = function(event){
		this.noticeFileActive();
		var options = {
				"position":"middle",
				"delay" : 1500,
				"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
		};
		justep.Util.hint("已完成加载···", options);
	};
	return Model;
});
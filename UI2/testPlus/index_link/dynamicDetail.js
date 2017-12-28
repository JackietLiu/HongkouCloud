define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!plugin.http.request");
	var Model = function(){
		this.callParent();
		this.comID ;
		this.name;
		this.title;
		this.createTime;
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.modelParamsReceive = function(event){
		var cmt = this.comp("cmtData");
		var cmtList = this.comp("cmtList");
		var filter = "did='"+event.params.id+"' and type='0'";
		cmt.setFilter("filter0", filter);
		cmt.refreshData();
		cmtList.refresh(true);
		//alert(event.params.id);
		document.getElementById(this.getIDByXID("span10")).innerHTML = event.params.name;
		document.getElementById(this.getIDByXID("label3")).innerHTML = event.params.title;
		document.getElementById(this.getIDByXID("span3")).innerHTML = event.params.createTime;
		this._comID = event.params.id;	

	};

	Model.prototype.submitClick = function(event){	 
			var me = this;
		var content = me.comp("comContent").val();
		var id = justep.UUID.createUUID();
		var cmt = me.comp("cmtData");
		var commentList = me.comp("commentList");
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
					"dID" : me._comID,
					"type" : "0",
					"sid" : localStorage.getItem("id"),
					"pImage" : localStorage.getItem("headimage")
				},
				"success" : function(ret) {
					if(ret.state == 1){
						justep.Util.hint("评论成功", {
							"type" : "success"
						});	  
						me.comp("comContent").clear();				
						var filter = "did='"+me._comID+"' and type='0'";
						cmt.setFilter("filter0", filter);
						cmt.refreshData();
						commentList.refresh(true);
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


	return Model;
});
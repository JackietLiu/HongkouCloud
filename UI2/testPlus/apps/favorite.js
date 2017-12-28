define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(event){
		window.localStorage.removeItem("checked");
	};

	Model.prototype.modelModelConstructDone = function(event){
		var id = localStorage.getItem("id");
		var collect = this.comp("collectData");
		var filter = "collectid='"+id+"'";
		collect.setFilter("filter0", filter);
		collect.refreshData();
	};

	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		var checked = window.localStorage.getItem("checked");
		if(!checked){
		 //checked不为true状态下点击进入详情	
			var params = {
					contentid : row.val("contentid"),
					title : row.val("title"),
					content : row.val("content"),
					createtime : row.val("createtime"),
					comefrom : row.val("comefrom")
			};
			justep.Shell.showPage("favoriteDetail", params);
		}else{
		   //checked为true状态下禁止点击
		}
	};

	Model.prototype.modelActive = function(event){
		$("#"+this.getIDByXID("cancelBtn")).addClass("hide");
		$("#"+this.getIDByXID("delBtn")).addClass("hide");
		$("#"+this.getIDByXID("editBtn")).removeClass("hide");	    
		$("#"+this.getIDByXID("backBtn")).removeClass("hide");
		var id = localStorage.getItem("id");
		var collect = this.comp("collectData");
		var filter = "collectid='"+id+"'";
		collect.setFilter("filter0", filter);
		collect.refreshData();
	};

	Model.prototype.editBtnClick = function(event){
//		$("#"+this.getIDByXID("list1")+" li")      
		window.localStorage.setItem("checked", true);
		var checkboxs = this.getElementsByXid("checkbox1");
		var divs =this.getElementsByXid("div5");
		for(var i=0; i<divs.length; i++){
			divs[i].style.marginLeft="30px";
			divs[i].style.marginRight="0px";
			checkboxs[i].style.display="block";
			divs[i].disabled =true;
		}
		$("#"+this.getIDByXID("backBtn")).addClass("hide");
		$("#"+this.getIDByXID("editBtn")).addClass("hide");
		$("#"+this.getIDByXID("cancelBtn")).removeClass("hide");
		$("#"+this.getIDByXID("delBtn")).removeClass("hide");

	};

	Model.prototype.cancelBtnClick = function(event){
		window.localStorage.removeItem("checked");
		var checkboxs = this.getElementsByXid("checkbox1");
		var divs =this.getElementsByXid("div5");
		for(var i=0; i<divs.length; i++){
			divs[i].style.marginLeft="10px";
			divs[i].style.marginRight="10px";
			checkboxs[i].style.display="none";
		}
		$("#"+this.getIDByXID("cancelBtn")).addClass("hide");
		$("#"+this.getIDByXID("delBtn")).addClass("hide");
		$("#"+this.getIDByXID("editBtn")).removeClass("hide");	    
		$("#"+this.getIDByXID("backBtn")).removeClass("hide");
	};

	Model.prototype.delBtnClick = function(event){
		var me = this;
		var collect = this.comp("collectData");
		var ids = new Array();
		collect.each(function(obj) {
			//console.log(obj.row.val("checked"));
			if(obj.row.val("checked")==1){
				ids.push(obj.row.val("id"));
			}			
		});
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "mutilDelCollect",
			"async" : false,
			"params" : {
				ids : ids
			},
			"success" : function(ret) {
				if(ret.state == 1){
					window.localStorage.removeItem("checked");
					var id = localStorage.getItem("id");
					var collect = me.comp("collectData");
					var filter = "collectid='"+id+"'";
					collect.setFilter("filter0", filter);
					collect.refreshData();
					$("#"+me.getIDByXID("cancelBtn")).addClass("hide");
					$("#"+me.getIDByXID("delBtn")).addClass("hide");
					$("#"+me.getIDByXID("editBtn")).removeClass("hide");	    
					$("#"+me.getIDByXID("backBtn")).removeClass("hide");

				}else if(ret.state === 0){
					justep.Util.hint("很抱歉，取消收藏失败", {
						type : "warning",
						delay : 1000
					});
				}else{
					justep.Util.hint("请选中至少一个收藏", {
						type : "warning",
						delay : 1000
					});
				}
			}
		});
		console.log(ids);
	};

	Model.prototype.backBtnClick = function(event){
		window.localStorage.removeItem("checked");
		justep.Shell.closePage();
	};

	return Model;
});

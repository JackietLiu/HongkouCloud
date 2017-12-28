define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		document.getElementById(this.getIDByXID("span15")).innerHTML = event.params.title;
		document.getElementById(this.getIDByXID("div7")).innerHTML = event.params.content;
		document.getElementById(this.getIDByXID("div7")).style.textAlign="left";
		document.getElementById(this.getIDByXID("div7")).style.fontSize="18px";
		document.getElementById(this.getIDByXID("span6")).innerHTML = event.params.createtime;
		document.getElementById(this.getIDByXID("span14")).innerHTML = event.params.comefrom;
		document.getElementById(this.getIDByXID("delCollect")).onclick=function(){
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "delCollect",
				"async" : false,
				"params" : {
					collectid : localStorage.getItem("id"),
					contentid : event.params.contentid
				},
				"success" : function(ret) {
					if(ret.state==1){
						justep.Shell.closePage();
					}else{
						justep.Util.hint("很抱歉，取消收藏失败", {
							type : "warning",
							delay : 1000
						});
					}

				}
			});
		};
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.scrollView1ScrollMove = function(event){
		var height = -event.source.scroller.y;
		if(height >48)
		    this.comp("panel1").setVisible('top', false);		
			//$("#"+this.getIDByXID("top1")).removeAttr("height");
		if(height == 0)
			this.comp("panel1").setVisible('top', true);
			//$("#"+this.getIDByXID("top1")).show();
	};

	return Model;
});
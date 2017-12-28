define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var me = this;
		justep.Baas.sendRequest({ 
			"url" : "/hongkou/hongkou",
			"action" : "loadHkNewsDetail",						
			"async" : false,
			"params" : {
				infoid : event.params.id
			},
			"success" : function(result) {
				console.log("公告"+result.content);
				if(result.content !== ""){
					document.getElementById(me.getIDByXID("div7")).innerHTML = result.content;
					document.getElementById(me.getIDByXID("div7")).style.fontSize="18px";
					document.getElementById(me.getIDByXID("collectBtn")).onclick=function(){
						var id = justep.UUID.createUUID();
						justep.Baas.sendRequest({
							"url" : "/hongkou/hongkou",
							"action" : "newCollect",
							"async" : false,
							"params" : {
								"id" : id,
								"content" : result.content,
								"title" :event.params.title,
								"createtime" : justep.Date.toString(new Date(), justep.Date.DEFAULT_FORMAT),
								"comefrom" : "公示公告",
								"collectid" : localStorage.getItem("id"),
								"contentid" : event.params.id
							},
							"success" : function(ret) {
								if(ret.state ==1){
									justep.Util.hint("收藏成功", {
										type : "success",
										delay : 1000
									});
								}else{
									justep.Util.hint("很抱歉，未收藏成功", {
										type : "warning",
										delay : 1000
									});
								}
							}
						});
					};

				}else{
					document.getElementById(me.getIDByXID("div7")).innerHTML = "该公告无内容！！！";
				}
			}
		});				
		document.getElementById(me.getIDByXID("span15")).innerHTML = event.params.title;			
		document.getElementById(me.getIDByXID("span14")).innerHTML = event.params.date;

	};	 

	Model.prototype.litFontSizeClick = function(event){
		/*$(this.getElementByXid("div7")).addClass("lit").removeClass("mid").removeClass("big");*/
		document.getElementById(this.getIDByXID("div7")).style.fontSize="16px";
	};	
	Model.prototype.midFontSizeClick = function(event){
		/*$(this.getElementByXid("div7")).addClass("mid").removeClass("lit").removeClass("big");*/
		document.getElementById(this.getIDByXID("div7")).style.fontSize="20px";
	};	
	Model.prototype.bigFontSizeClick = function(event){
		/*$(this.getElementByXid("div7")).addClass("big").removeClass("lit").removeClass("mid");*/
		document.getElementById(this.getIDByXID("div7")).style.fontSize="25px";

	};	
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};	


	Model.prototype.scrollView1ScrollMove = function(event){
		var height = -event.source.scroller.y;
		console.log(height);
		if(height >48){
			this.comp("panel1").setVisible('top', false);		
		}
		if(height == 0){
			this.comp("panel1").setVisible('top', true);
		}
	};	


	return Model;
});
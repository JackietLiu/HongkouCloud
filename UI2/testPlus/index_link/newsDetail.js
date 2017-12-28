define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();

	};

	Model.prototype.modelParamsReceive = function(event){
		var me = this;
		var infoid=event.params.id;
		//alert(infoid);	
		justep.Baas.sendRequest({ 
			"url" : "/hongkou/hongkou",
			"action" : "loadHkNewsDetail",						
			"async" : false,
			"params" : {
				infoid : infoid
			},
			"success" : function(result) {
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
							"comefrom" : "虹口新闻",
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

			}
		});

		document.getElementById(this.getIDByXID("span15")).innerHTML = event.params.title;			
		document.getElementById(this.getIDByXID("span14")).innerHTML = event.params.date;
		//document.getElementById(this.getIDByXID("span16")).innerHTML = event.data.clickTimes;

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
		if(height >48)
			this.comp("panel1").setVisible('top', false);		
		if(height == 0)
			this.comp("panel1").setVisible('top', true);
	};	

	return Model;
});
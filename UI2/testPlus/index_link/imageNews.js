define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();

	};

	Model.prototype.refreshBtnClick = function(event){

	};

	Model.prototype.shareBtnClick = function(event){


	};

	Model.prototype.modelParamsReceive = function(event){
		var me = this;
//		var url = event.params.url;
		//var title = event.params.title;
		//alert(event.params.title);
		document.getElementById(me.getIDByXID("span15")).innerHTML = event.params.title;
		//alert(title);
//		var me = this;
		var imageID = event.params.id;
		justep.Baas.sendRequest({
			"url" : "/hongkou/hongkou",
			"action" : "loadNewsDetail",
			"async" : false,
			"params" : {
				imageID : imageID
			},
			"success" : function(result) {
				//alert(result.newsDetail);
				document.getElementById(me.getIDByXID("div7")).innerHTML = result.newsDetail;
				document.getElementById(me.getIDByXID("div7")).style.fontSize="18px";
				document.getElementById(me.getIDByXID("collectBtn")).onclick=function(){
					var id = justep.UUID.createUUID();
					justep.Baas.sendRequest({
						"url" : "/hongkou/hongkou",
						"action" : "newCollect",
						"async" : false,
						"params" : {
							"id" : id,
							"content" : result.newsDetail,
							"title" :event.params.title,
							"createtime" : justep.Date.toString(new Date(), justep.Date.DEFAULT_FORMAT),
							"comefrom" : "图片新闻",
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

	};

	Model.prototype.modelLoad = function(event){


	};
	Model.prototype.litFontSizeClick = function(event){
		/*$(this.getElementByXid("div1")).addClass("lit").removeClass("mid").removeClass("big");*/
		document.getElementById(this.getIDByXID("div1")).style.fontSize="16px";
	};	
	Model.prototype.midFontSizeClick = function(event){
		/*$(this.getElementByXid("div1")).addClass("mid").removeClass("lit").removeClass("big");*/
		document.getElementById(this.getIDByXID("div1")).style.fontSize="20px";
	};	
	Model.prototype.bigFontSizeClick = function(event){
		/*$(this.getElementByXid("div1")).addClass("big").removeClass("lit").removeClass("mid");*/
		document.getElementById(this.getIDByXID("div1")).style.fontSize="25px";

	};	
	Model.prototype.modelModelConstructDone = function(event){

	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};

	Model.prototype.scrollView1ScrollMove = function(event){
		var height = -event.source.scroller.y;
		if(height >48){
			this.comp("panel1").setVisible('top', false);		
		}
		if(height == 0){
			this.comp("panel1").setVisible('top', true);
		}
	};


	return Model;
});
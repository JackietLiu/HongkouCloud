define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.span3Click = function(event){
		var url = '$UI'+event.source.$domNode.attr('url'); 
		justep.Shell.showPage(url);
	};
	Model.prototype.div14Click = function(event){
		justep.Shell.showPage("newapps");
	};
	Model.prototype.showLeftBtnClick = function(event){
		justep.Shell.showLeft();          
	};
	Model.prototype.div38Click = function(event){
		justep.Shell.showPage("newplugins");
	};
	Model.prototype.div8Click = function(event){
	//	justep.Shell.showPage("empty");
	this.showHint();
	};
	Model.prototype.showHint = function(evt){
		var options = {
				"position":"middle",
				"delay" : 1500,
				"style" : "color:#fff;height:40px;line-height:10px;background:rgba(0,0,0,0.5); border:0;text-align:center;border-radius:0;"
		};
		justep.Util.hint("功能正在开发中···", options);
	};
	return Model;
});
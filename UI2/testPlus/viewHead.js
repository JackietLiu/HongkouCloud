define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.backBtnClick = function(event){
         justep.Shell.closePage();
	};

	Model.prototype.modelLoad = function(event){	     
        $("#"+this.getIDByXID("image1")).attr("src",window.localStorage.getItem("headimage"));
	};

	return Model;
});
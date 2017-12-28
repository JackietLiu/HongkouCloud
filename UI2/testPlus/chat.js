define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelLoad = function(event){
	     alert(0);
		$("#"+this.getIDByXID("iframe")).attr("src","../chat/wex5/index.w");
	};

	return Model;
});
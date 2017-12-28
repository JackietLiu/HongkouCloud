define(function(require){
//	var $ = require("jquery");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.getImageUrl = function(url) {
		if (url) {
			return require.toUrl(url);
		} else {
			return "";
		}
	};
	return Model;
});
define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelLoad = function(event){
		var uID = localStorage.getItem("id");
		var src = "http://116.236.228.21:8081/wap/pages/login.html?user="+uID+"&target=email.aspx";		
		$("iframe").attr("src",src);
		//#007AFF
		StatusBar.backgroundColorByHexString("#007AFF");

	};
	Model.prototype.indexBtnClick = function(event){
		/*justep.Shell.showPage("main");*/
		StatusBar.backgroundColorByHexString("#37b9ed");
		this.close();
	};
	return Model;
});
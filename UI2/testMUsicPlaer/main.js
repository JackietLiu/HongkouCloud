define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	//打开左侧设置
	Model.prototype.settingBtnClick = function(event){
		justep.Shell.showPage("left");
	};

	Model.prototype.button23Click = function(event){
        alert(0);
	};

	Model.prototype.modelLoad = function(event){
        var fontSize = $(window).width()/30;//屏幕的宽
        var div = this.getIDByXID("div19");
       //alert(div+"------>"+fontSize);
        $(".table").css("font-size",fontSize +"px");
        $("#"+div+"").css("font-size",fontSize +"px");
	};

	return Model;
});
define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		
	};
 
	Model.prototype.div1Click = function(event){
		 justep.Shell.showPage("coop");
	};
	Model.prototype.backToMainClick = function(event){
      justep.Shell.showMainPage();
	};
	Model.prototype.changePage = function(event){
		justep.Shell.showPage("assetManage");
	};
	Model.prototype.alertClick = function(event){
		justep.Util.hint("程序猿正在努力开发该应用中...", {
	     "style":"background:rgba(0,0,0,0.3);color:white;border:none;",
	     "position": "middle"
		});
	};
	Model.prototype.div2Click = function(event){
		//justep.Shell.showPage("propert");
	};

	Model.prototype.div7Click = function(event){
		//justep.Shell.showPage("sumRent");
	};

	Model.prototype.div3Click = function(event){
		//justep.Shell.showPage("newBuilding");
	};

	Model.prototype.div4Click = function(event){
		//justep.Shell.showPage("newLoad");
	};

	Model.prototype.div5Click = function(event){
		//justep.Shell.showPage("descRoom");
	};

	Model.prototype.div6Click = function(event){
		//justep.Shell.showPage("mouthRent");
	};



	return Model;
});
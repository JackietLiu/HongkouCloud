define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();


	};

	Model.prototype.msgDataCustomRefresh = function(event){

	};

	Model.prototype.alertClick = function(event){
		justep.Util.hint("程序猿正在努力开发该应用中...", {
	     "style":"background:rgba(0,0,0,0.3);color:white;border:none;",
	     "position": "middle"
		});
	};	
	
	Model.prototype.openPageClick = function(event){
		justep.Shell.showPage("coop_index");
	};	
	Model.prototype.logoutClick = function(event){
       this.comp("logoutDialog").show();      
  	};

	Model.prototype.exitAppBtnClick = function(event){
        this.comp("exitDialog").show(); 
	};
	Model.prototype.logoutDialogOK = function(event){
         localStorage.clear();
         var dialog = this.comp("loginDialog");
         var src = require.toUrl("./login.w");
         dialog.open({
	         src : src
		});
	};


	Model.prototype.modelLoad = function(event){  
		var id = localStorage.getItem("id");
		var data = this.comp("userData");   
		if(id != null){

			var filter = "uID='"+id+"'";
			//alert(filter);
			// justep.Shell.showPage("main");
			data.setFilter("filter0", filter);
			data.refreshData();
		}  else{
			justep.Shell.showPage("login");
		}
	};

	Model.prototype.updataPwdClick = function(event){
		justep.Shell.showPage("updatapwd");
	};

	Model.prototype.leftBtnClick = function(event){
		justep.Shell.showLeft();
	};

	Model.prototype.exitDialogOK = function(event){
       navigator.app.exitApp(); 
	};

	return Model;
});
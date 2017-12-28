define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	Model.prototype.modelParamsReceive = function(event){
		/*	     var me = this;
         me._url = "http://" + me._buf +"/"+ "default?userid=" + window.localStorage.getItem("username");
          $("iframe").attr("src",me._url);
          document.getElementById((this.getIDByXID("label2"))).innerHTML = span;
		 */
	};

	Model.prototype.modelLoad = function(event){
		var username = localStorage.getItem("username");
		var src="http://218.242.160.240/HKWGTJ/main.aspx?userId="+username+"";
		/*http://192.168.201.22/HKWGTJ/main.aspx?userId=testuser 网格化外网访问地址*/
		$("iframe").attr("src",src);  
		//  cordova.InAppBrowser.open(src, '_system', 'location=yes');
		//window.open(src, "_system");
	};

	Model.prototype.iframeLoad = function(event){

	};

	return Model;
});
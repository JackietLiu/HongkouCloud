define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	
	var Model = function(){
		this.callParent();		
	   
	    this.ShellImpl= new ShellImpl(this, {
	      "contentsXid" : "pages",
	      "wingXid" : "wing",
	      "pageMappings" : {
	       "login" : {
	          url : require.toUrl('./login.w')
	        },
	         "main" : {
	          url : require.toUrl('./main.w')
	        },
	       "updataPwd": {
	          url : require.toUrl("./updatapwd.w")
	        },
	      
	       "propert" :{
	          url : require.toUrl("./cooperation/coop_index/propert.w")
	        },
	        "visitRecord" :{
	          url : require.toUrl("./cooperation/visitRecord.w")
	        },
	        "rentRecord" :{
	          url : require.toUrl("./cooperation/rentRecord.w")
	        },
	        "revenueRecord" :{
	          url : require.toUrl("./cooperation/revenueRecord.w")
	        },
	        "descRent" :{
	          url : require.toUrl("./cooperation/descRent.w")
	        },
	        "contrat" :{
	          url : require.toUrl("./cooperation/contrat.w")
	        },
	        "floor" : {
	          url : require.toUrl("./cooperation/floor.w")
	        },
	        "road" : {
		          url : require.toUrl("./cooperation/road.w")
		        },
	        
	        "detail":{
	        	url : require.toUrl("./cooperation/detail.w")
	        },
	        "contract_detail":{
	        	url : require.toUrl("./cooperation/coop_index/contract_detail.w")
	        },
	        "pay_detail":{
	        	url : require.toUrl("./cooperation/coop_index/pay_detail.w")
	        },
	         "building_detail":{
	        	url : require.toUrl("./cooperation/coop_index/building_detail.w")
	        },
	        "coop_index":{
	        	url : require.toUrl("./cooperation/coop_index/coop_index.w")
	        },
	        "coop":{
	        	url : require.toUrl("./cooperation/coop_index/coop.w")
	        },
	        "assetManage":{
	        	url : require.toUrl("./cooperation/coop_index/assetManage.w")
	        },
	        "sumRent":{
	        	url : require.toUrl("./cooperation/coop_index/sumRent.w")
	        },
	        "mouthRent":{
	        	url : require.toUrl("./cooperation/coop_index/mouthRent.w")
	        },
	        "descRoom":{
	        	url : require.toUrl("./cooperation/coop_index/descRoom.w")
	        },
	        "rentDetail" :{
		          url : require.toUrl("./cooperation/rentDetail.w")
		    },
	        "newBuilding":{
	        	url : require.toUrl("./cooperation/coop_index/newBuilding.w")
	        },
	        "newLoad":{
	        	url : require.toUrl("./cooperation/coop_index/newLoad.w")
	        },
	        "empty":{
	        	url : require.toUrl("./emptyPage.w")
	        	
	        },
	        "enterprise_Detail":{
	             url : require.toUrl("./enterprise/enterprise_Detail.w")
	        },
	        "contact_Detail" : {
	             url : require.toUrl("./enterprise/contact_Detail.w")
	        }
	      }
	});
	};
	Model.prototype.modelLoad = function(event){
	    var me = this; 
		var id = localStorage.getItem("id");
		var data = this.comp("userData");   
		if(id != null){
			justep.Shell.showPage("main");
			var filter = "uID='"+id+"'";
			data.setFilter("filter0", filter);
			data.refreshData();
		}  else{
			justep.Shell.showPage("login");
			//me.comp("loginDialog").open();
		}     
	};

	Model.prototype.exitClick = function(event){
        navigator.app.exitApp();      
	};

	return Model;
});
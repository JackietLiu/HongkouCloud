define(function(require){
    require("cordova!plugin.http.request");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
		this.input_value=justep.Bind.observable("");
	};

	Model.prototype.btn_coop_searchClick = function(event){
	   var enterprise_List =this.comp("enterpriseData");
	   var me =this;
	   var httpReq = new plugin.HttpRequest();
	   var myinput= this.input_value.get() ;
	  var sql="";
	  if(justep.String.trim(this.input_value.get())=="")
	  {
	  sql="select ID,ent_name,ent_address,ent_rep from tb_enterprise_info";
	  }
	  else
	  {
		   sql="select ID, ent_name,ent_address,ent_rep from tb_enterprise_info where ent_name  like '%" +myinput +"%' or ent_rep like '%" + myinput +"%' or ent_address like '%" + myinput + "%'";
	  } 
	              
			httpReq.post("http://118.178.95.108:8019/WebService/WebService_DS.asmx/GetDataBySql", {
				sql : sql		
			},function(err, data) { 
                
				justep.Baas.sendRequest({ 
					"url" : "/com/shiquanBlock",
					"action" : "getXml3",						
					"async" : false,
					"params" : {
						xml : data   
					}, 
					"success" : function(result) {	
						 enterprise_List.clear();
						   if(result.data===']')
						 {
						 me.comp("Dialog").show();
						  
						 return ;
						 }
						 var ret = eval(result.data);
						 
						
						 for (var i = 0; i < ret.length; i++) {
							 
							 enterprise_List.newData({
								 defaultValues : [{
								 "ID":ret[i].ID,
								 "ent_name":ret[i].ent_name,
								 "ent_address":ret[i].ent_address ,
								 "ent_rep":ret[i].ent_rep
								 }]
							 }); 
							
						}
						
						enterprise_List.refreshData();
						 me.comp("list1").refresh(true);
						//var params = {id : result.id, title : result.title, date : result.date};				   
						//justep.Shell.showPage("noticeBorder", params);          
					}
				});					
			});

	};


	Model.prototype.btn_ContractClick = function(event){
 
		var row = event.bindingContext.$object;
	 
		var params = { 
				data :{
					enterpriseData: this.comp("enterpriseData").getCurrentRow().toJson(),
					ID:row.val("ID")
				}
		}; 
		justep.Shell.showPage("contact_Detail",params);
 
	};


	Model.prototype.button3Click = function(event){
		var row = event.bindingContext.$object;
		var params = { 
				data :{
					enterpriseData: this.comp("enterpriseData").getCurrentRow().toJson(),
					ID:row.val("ID")
				}
		}; 
		justep.Shell.showPage("enterprise_Detail",params);
		
	};


	Model.prototype.backToMainClick = function(event){
         justep.Shell.showMainPage();
	};


	Model.prototype.DialogOK = function(event){

	};


	return Model;
});
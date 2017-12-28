define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
	 var build =this.comp("buildData");
	   var me =this;
	   var httpReq = new plugin.HttpRequest();
		if (event.params.data){	
			 
			var the_id=event.params.data.ID ;
			/*var sql="select[ID] ,[building_name],[content],[b_address],[floors],[sumRoom],[area] " +
				",build_type_Text=(SELECT TOP 1 [name] FROM vb_dictionary b   WHERE CONVERT(VARCHAR(10),a.building_type)=b.[key] AND b.parent_key='building_type') " +
			     ",use_type_Text=(SELECT TOP 1 [name] FROM vb_dictionary b   WHERE CONVERT(VARCHAR(10),a.use_type)=b.[key] AND b.parent_key='building_type') "+
			     " from building a where a.id='" + justep.String.trim(the_id) +"'";*/
			var sql= "select[ID] ,[building_name],[content],[b_address],[floors],[sumRoom],[area] ,[building_type],[use_type] from building a where a.ID='"+justep.String.trim(the_id)+"'";
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
					
						 build.clear();
						 var ret = eval(result.data);
						 
						 for (var i = 0; i < ret.length; i++) {
							 
							 build.newData({
								 defaultValues : [{
								 "ID":ret[i].ID,
								 "b_address":ret[i].b_address,
								 "content":ret[i].content ,
								 "building_name":ret[i].building_name,
								 "area":ret[i].area,
								 "build_type_Text":ret[i].building_type,
								 "use_type_Text":ret[i].use_type
								  
								 }]
							 }); 
							
						}
					//	build.refreshData();
					//	me.comp("list1").refresh(true);
						//var params = {id : result.id, title : result.title, date : result.date};				   
						//justep.Shell.showPage("noticeBorder", params);          
					}
				});					
			});	
		 
			 //this.comp("buildData").loadData([event.params.data.buildData]);
			// this.comp("buildData").refreshData();
			 
		}
	};

	Model.prototype.modelLoad = function(event){
	
	};

	return Model;
});
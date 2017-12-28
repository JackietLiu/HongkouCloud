define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var contactdata = this.comp("contactdata");
		var me = this;
		var httpReq = new plugin.HttpRequest();
		if (event.params.data) {

			var the_id = event.params.data.ID;
			var sql = "SELECT  id,contact_name,contact_title,contact_tel FROM  tb_enterprise_info a where   a.id='"
					+ justep.String.trim(the_id) + "'";

			httpReq.post("http://118.178.95.108:8019/WebService/WebService_DS.asmx/GetDataBySql", {
				sql : sql
			}, function(err, data) {
				 
				justep.Baas.sendRequest({
					"url" : "/com/shiquanBlock",
					"action" : "getXml3",
					"async" : false,
					"params" : {
						xml : data
					},
					"success" : function(result) {
						contactdata.clear();
						var ret = eval(result.data);

						for (var i = 0; i < ret.length; i++) {

							contactdata.newData({
								defaultValues : [ {
									"ID" : ret[i].ID,
									"contact_name" : ret[i].contact_name,
									"contact_title":ret[i].contact_title,
									"contact_tel": ret[i].contact_tel
								 

								} ]
							});

						}
						  contactdata.refreshData();
						// me.comp("list1").refresh(true);
						// var params = {id : result.id, title : result.title,
						// date : result.date};
						// justep.Shell.showPage("noticeBorder", params);
					}
				});
			});

			// this.comp("buildData").loadData([event.params.data.buildData]);
			// this.comp("buildData").refreshData();

		}
	};


	return Model;
});
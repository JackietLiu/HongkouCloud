define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var enterprisedata = this.comp("enterprisedata");
		var me = this;
		var httpReq = new plugin.HttpRequest();
		if (event.params.data) {
     
			var the_id = event.params.data.ID;
			var sql = "select *,fromto=( case when run_date_begin is not null then CONVERT(varchar(10),run_date_begin,121)  +'-' else '' end ) +  " 
 + " ( case when run_date_end is not null then CONVERT(varchar(10),run_date_end,121) else '' end ),setup_date_Txt=convert(varchar(10),setup_date,121) " 
 +", ent_type_text=(SELECT TOP 1 [name] FROM vb_dictionary b  WHERE CONVERT(VARCHAR(10),a.ent_type)=b.[key] AND b.parent_key='ent_type') "
 +" from tb_enterprise_info a where  a.id='"
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
						enterprisedata.clear();
						var ret = eval(result.data);

						for (var i = 0; i < ret.length; i++) {

							enterprisedata.newData({
								defaultValues : [ {
									"ID" : ret[i].ID,
									"ent_name" : ret[i].ent_name,
									"ent_type_text":ret[i].ent_type_text,
									"ent_rep": ret[i].ent_rep,
									"ent_address" : ret[i].ent_address,
									"ent_mail" : ret[i].ent_mail,
									"fromto" : ret[i].fromto,
									"ent_type_text" : ret[i].ent_type_text,
									"reg_capital" : ret[i].reg_capital,									
									"setup_date_Txt" : ret[i].setup_date,
									"run_date" : ret[i].run_date,
									"run_content" : ret[i].run_content,
									"reg_no" : ret[i].reg_no,
									"license_no" : ret[i].license_no,
									"allin1_no" : ret[i].allin1_no,
									"reg_address" : ret[i].reg_address,			 
									"memo" : ret[i].memo

								} ]
							});
 
						}
						  enterprisedata.refreshData();
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
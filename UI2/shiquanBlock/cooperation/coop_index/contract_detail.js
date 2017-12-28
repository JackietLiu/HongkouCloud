define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var contract = this.comp("contractdata");
		var me = this;
		var httpReq = new plugin.HttpRequest();
		if (event.params.data) {

			var the_id = event.params.data.ID;
			var sql = "select top 1 a.*,b.b_address,fromto=(case when [start] is null  then '' else convert(varchar(10),start,121) end )  +'--'  + "
					+ " (case when ends is null then '无结束日期' else convert(varchar(10),ends,121) end ),rent_pay_Text=(SELECT TOP 1 [name] FROM vb_dictionary c "
					+ " WHERE CONVERT(VARCHAR(10),a.rent_pay)=c.[key] AND c.parent_key='rent_pay') ,b.building_name "+
					" ,daishou=(case when a.water_fee='是' then '代收水费 ' else '' end ) + '   '  +(case when a.power_fee='是' then '代收电费' else '' end )  from Contrat a  ,building b where a.b_id=b.id " + "and b.id='"
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
						contract.clear();
						   if(result.data===']')
						 {
						 me.comp("Dialog").show();
						  
						 return ;
						 }
						var ret = eval(result.data);

						for (var i = 0; i < ret.length; i++) {

							contract.newData({
								defaultValues : [ {
									"ID" : ret[i].ID,
									"lesseeName" : ret[i].lesseeName,
									"phoneNumber": ret[i].phoneNumber,
									"b_address" : ret[i].b_address,
									"mouthRent" : ret[i].mouthRent,
									"rent_pay_Text" : ret[i].rent_pay_Text,
									"fromto" : ret[i].fromto,

									"daishou" : ret[i].daishou,
									"memo" : ret[i].memo

								} ]
							});

						}
						// build.refreshData();
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

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.DialogOK = function(event){

	};

	return Model;
});
define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

Model.prototype.modelParamsReceive = function(event) {
		var paydata = this.comp("paydata");
		var me = this;
		var httpReq = new plugin.HttpRequest();
		if (event.params.data) {
     
			var the_id = event.params.data.ID;
		 
			var sql = "SELECT ID,b_address=(select b_address from building where ID=a.b_id) " 
					+" ,contrat_id,contrat_no,payer_Name,je_rent,is_audit,user_audit,invoice_no,memo,Pay_less,Pay_less_memo "
					+" ,pay_date_txt=CONVERT(varchar(10),pay_date,121) "
					+" ,audit_date_txt=CONVERT(varchar(10),audit_date,121) "
					+" ,je_wp_txt=(case when je_water_fee>0 then '水费' + CONVERT(varchar(10),je_water_fee) else '' end ) + '  '+ (case when je_power_fee>0 then '电费' + CONVERT(varchar(10),je_power_fee) else '' end ) "
					+" ,rent_txt = convert(varchar(5),rent_4_year) +'年' + '  ' + "
					+" case when rent_pay='1' then  rent_4_month when rent_pay='2' then (select top 1  season_name  from [TS_Month] where rent_4_month=season_no) "
					+" when rent_pay='3' then (select top 1   Half_Year_Name  from [TS_Month] where Half_Year_No=rent_4_month) "
					+" when rent_pay='4'  then rent_4_month end   + +' ' + (SELECT TOP 1 [name] FROM vb_dictionary c  WHERE a.rent_pay=c.[key] AND c.parent_key='rent_pay') "
					+"  ,pay_mode_txt=(SELECT TOP 1 [name] FROM vb_dictionary d  WHERE a.pay_mode=d.[key] AND d.parent_key='pay_mode') "
					+"FROM tb_contrat_pay a "
					+" where  b_id='" + justep.String.trim(the_id) +"'  and contrat_id =(select top 1 ID from contrat where b_id='"+ justep.String.trim(the_id) +"' order by start desc ) "
					;

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
						paydata.clear();
						   if(result.data===']')
						 {
						 me.comp("Dialog").show();
						  
						 return ;
						 }
						var ret = eval(result.data);

						for (var i = 0; i < ret.length; i++) {
					 
							paydata.newData({
								defaultValues : [ {
									"ID" : ret[i].ID,
									"b_address" : ret[i].b_address,
									"contrat_no": ret[i].contrat_no,
									"payer_Name" : ret[i].payer_Name,
									"je_rent" : ret[i].je_rent,
									"is_audit" : ret[i].is_audit,
									"user_audit" : ret[i].user_audit,
									"invoice_no" : ret[i].invoice_no,
									"memo" : ret[i].memo,
									"Pay_less_memo" : ret[i].Pay_less_memo,
									"pay_date_txt" : ret[i].pay_date_txt,
									"audit_date_txt" : ret[i].audit_date_txt,
									"je_wp_txt" : ret[i].je_wp_txt,
									"rent_txt" : ret[i].rent_txt,
									"pay_mode_txt" : ret[i].pay_mode_txt 
									 

								}]
							});

						}
						  paydata.refreshData();
						  me.comp("list1").refresh(true);
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

	Model.prototype.list1Click = function(event){

	};

	Model.prototype.DialogOK = function(event){

	};

	return Model;
});
define(function(require){

	require("cordova!plugin.http.request");
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
		this.input_value=justep.Bind.observable("");
	};
	
	Model.prototype.searchBtnClick = function(event){

	};	
	Model.prototype.modelLoad = function(event) {
		//this.loadBaiduMap();

	};

	Model.prototype.loadBaiduMap = function() {
		var id = this.getIDByXID("baiduMap");
		window._baiduInit = function() {
			var map = new BMap.Map(id);
			map.centerAndZoom(new BMap.Point(116.45764191999997,39.8622934399999), 12);
			map.addControl(new BMap.MapTypeControl());
			map.setCurrentCity("北京");
			map.enableScrollWheelZoom(true);
		};
		require([ 'http://api.map.baidu.com/api?v=1.4&ak=您的密钥&callback=_baiduInit' ], function() {
			if (!(window.BMap && window.BMap.apiLoad)){
				window._baiduInit();
			}
		});
	};

  

	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);

	};


	Model.prototype.list1Click = function(event){

		var params = { 
				data :{
					buildData: this.comp("buildData").getCurrentRow().toJson(),
					
				}
		}; 
		//justep.Shell.showPage("floor", params);


	};
	Model.prototype.div19Click = function(event){

	};


	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};


	Model.prototype.list3Click = function(event){
		var params = { 
				data :{
					buildData: this.comp("buildData").getCurrentRow().toJson()
				}
		}; 
		//justep.Shell.showPage("road", params);
	};

	Model.prototype.btn_coop_searchClick = function(event){
	   var build =this.comp("buildData");
	   var me =this;
	   var httpReq = new plugin.HttpRequest();
	   var myinput= this.input_value.get() ;
	  var sql="";
	  if(justep.String.trim(this.input_value.get())=="")
	  {
	  sql="select * from building  ";
	  }
	  else
	  {
		   sql="select * from building where b_address  like '%" +myinput +"%' or content like '%" + myinput +"%' or building_name like '%" + myinput + "%'";
	  } 
	        
      
			httpReq.post("http://118.178.95.108:8019/WebService/WebService_DS.asmx/GetDataBySql", {
				sql : sql		
			},function(err, data) { 
              //  alert(data);
				justep.Baas.sendRequest({ 
					"url" : "/com/shiquanBlock",
					"action" : "getXml3",						
					"async" : false,
					"params" : {
						xml : data   
					}, 
					"success" : function(result) {	
						 build.clear();
						    if(result.data===']')
						 {
						 me.comp("Dialog").show();
						  
						 return ;
						 }
						 var ret = eval(result.data);
						 
						 for (var i = 0; i < ret.length; i++) {
							 
							 build.newData({
								 defaultValues : [{
								 "ID":ret[i].ID,
								 "b_address":ret[i].b_address,
								 "content":ret[i].content ,
								 "img":ret[i].img
								 }]
							 }); 
							
						}
						build.refreshData();
						me.comp("list1").refresh(true);
						//var params = {id : result.id, title : result.title, date : result.date};				   
						//justep.Shell.showPage("noticeBorder", params);          
					}
				});					
			});


	};

	Model.prototype.button3Click = function(event){
	var row = event.bindingContext.$object;
	 
		var params = { 
				data :{
					buildData: this.comp("buildData").getCurrentRow().toJson(),
					ID:row.val("ID")
				}
		}; 
		justep.Shell.showPage("building_detail",params);
	};

	Model.prototype.btn_ContractClick = function(event){
			var row = event.bindingContext.$object;
				//alert(row.val("ID"));
					var params = { 
							data :{
								buildData: this.comp("buildData").getCurrentRow().toJson(),
								ID:row.val("ID")
							}
					}; 
					justep.Shell.showPage("contract_detail",params);
	};

	Model.prototype.btn_PayClick = function(event){
			var row = event.bindingContext.$object;
				//alert(row.val("ID"));
					var params = { 
							data :{
								buildData: this.comp("buildData").getCurrentRow().toJson(),
								ID:row.val("ID")
							}
					}; 
					justep.Shell.showPage("pay_detail",params);
	};

	Model.prototype.exitDialogOK = function(event){

	};

	Model.prototype.changePage = function(event){
        alert("正在开发中...");
	};

	return Model;
});
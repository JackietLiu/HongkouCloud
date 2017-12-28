define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!plugin.http.request");
	var Model = function(){
		this.callParent();
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(row) {
		return require.toUrl(row.val("image"));
	};
	Model.prototype.getDate = function(row) {
	    console.log(row);
		var str = row.toString();						      
		var date = new Date(str);
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		m = m < 10? ('0' + m) : m;
		var d = date.getDate();
		d = d < 10 ? ('0' + d) : d;
		var h = date.getHours();  
		h = h < 10 ? ('0' + h) : h;
		var minute = date.getMinutes();  
		minute = minute < 10 ? ('0' + minute) : minute;
		var dateTime = y + '-' + m + '-' + d+' '+h+':'+minute;
		//dateTime = dateTime.split(".")[0];
		return dateTime;
	};
	Model.prototype.backBtnClick = function(event){
		justep.Shell.closePage();
	};
	Model.prototype.modelLoad = function(event){
	   
	};

	Model.prototype.pinglunBtnClick = function(event){
		var row = event.bindingContext.$object;	
		var date = this.getDate(row.val("FeedBackDate"));
		var params = {
				id : row.val("ID"),
				name : row.val("FeedBackContent"),
				createTime : date,
				title : row.val("FeedBack_Title")
		};
		justep.Shell.showPage("dynamicDetail", params);
	};
	Model.prototype.theWorkDataCustomRefresh = function(event){
		/*	var me = this;
		// var woker = me.comp("theWorkData"); 
		var pageIndex = 1;
		var pageSize = 10;
		var httpReq = new plugin.HttpRequest();
		// var sql = "SELECT * FROM dynamic ORDER BY createTime DESC";
		httpReq.post("http://116.236.228.21:8899/webservice/WebService_Special.asmx/Get_Special_List", {
			pageIndex : pageIndex, pageSize : pageSize		
		},function(err, data) {
			//alert(data);
			justep.Baas.sendRequest({
				"url" : "/hongkou/hongkou",
				"action" : "getXml3",
				"async" : false,
				"params" : {xml:data},
				"success" : function(ret) {
					var value = ret.title;
					// alert(value);
					if(value !== "]"){
						document.getElementById(me.getIDByXID("div21")).innerHTML == "";
						var obj = eval(value);
						event.source.clear();
						for (var i = 0; i < obj.length; i++) {
							var type = obj[i].type;
							var str = obj[i].FeedBackDate.toString();						      
							var date = new Date(str);
							var y = date.getFullYear();
							var m = date.getMonth()+1;
							m = m < 10? ('0' + m) : m;
							var d = date.getDate();
							d = d < 10 ? ('0' + d) : d;
							var h = date.getHours();  
							h = h < 10 ? ('0' + h) : h;
							var minute = date.getMinutes();  
							minute = minute < 10 ? ('0' + minute) : minute;
							var dateTime = y + '-' + m + '-' + d+' '+h+':'+minute;
							//alert(dateTime);

							event.source.newData({
								index : 0,
								defaultValues : [{
									"id" : obj[i].ID,
									"createTime"  : dateTime,
									"title" :  obj[i].Category_Text,
									"createMan" : obj[i].Real_name
								}]
							}); 
						}	
					}	
					else{						   
						document.getElementById(me.getIDByXID("div21")).innerHTML = "还没有动态呢，快来发布吧";   
					}					  						
				}				
			}); 			  
		});		 */
	};
	return Model;
});
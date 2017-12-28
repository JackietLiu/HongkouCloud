define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
	    
	};
	Model.prototype.button1Click = function(event){
	      var me = this;
	      var phoneNumber = me.comp("phoneNumber");          
          var password2 = me.comp("password2").val();
          var password1 = me.comp("password1").val();
          var password3 = me.comp("password3").val();         
          //var userData = me.comp("userData");
          
          if(password1 ==="" || password2 === "" || password3 ==="" || phoneNumber ===""){
            me.comp("falseDialog").show({
              "title" : "温馨提示",
              "message"  : "用户名，密码不能为空！"
              
           });
          }
          else if(me.comp("password2").val() === me.comp("password3").val()){

          }
          else{
             me.comp("falseDialog").show({
              "title" : "温馨提示",
              "message"  : "修改失败.."
              
           });
          }
          
	};
	Model.prototype.houseBtnClick = function(event){
         	
         var url = '$UI'+event.source.$domNode.attr('url'); 
          justep.Shell.showPage(url);

	};

	Model.prototype.messageDialog1OK = function(event){
	     this.close();
	};

	return Model;
});
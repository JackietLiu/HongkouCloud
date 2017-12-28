<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:46px;top:33px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="ID"><column label="ID" name="ID" type="String" xid="xid1"></column>
  <column label="UserName" name="UserName" type="String" xid="xid2"></column>
  <column label="PassWord" name="PassWord" type="String" xid="xid3"></column></div></div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1" style="background-repeat:no-repeat;">
   <div class="x-panel-content" xid="content1" style="background-color:RGB(41,174,239);"><div xid="div2">
  <div xid="div1" align="center" style="padding:10% 0;"><h3 xid="h31" style="color:#fff;text-align:center"><![CDATA[社区协作云]]></h3></div></div>
  <div xid="div3" style="padding:0 15px;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="username" placeHolder="登录账号" style="border-radius:0;"></input><input component="$UI/system/components/justep/input/password" class="form-control" xid="password" placeHolder="登录密码" style="border-radius:0;"></input><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block center-block" label="登录" xid="loginBtn" onClick="loginBtnClick" style="border-radius:0;margin-top:10px;background-color:rgb(91,192,244);font-size:16px;">
   <i xid="i1"></i>
   <span xid="span1">登录</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label pull-right" label="修改密码" xid="updataPwd" style="color:rgb(91,192,244);" onClick="updataPwdClick">
   <i xid="i2"></i>
   <span xid="span2">修改密码</span></a></div></div>
   
  </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mainupdateDialog"></span></div>
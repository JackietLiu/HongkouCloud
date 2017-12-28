<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:150px;top:289px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="uID">
   <column label="uID" name="uID" type="String" xid="xid1"></column>
   <column label="phoneNumber" name="phoneNumber" type="String" xid="xid2"></column>
   <column label="PassWord" name="PassWord" type="String" xid="xid3"></column>
   <column label="img" name="img" type="String" xid="xid4"></column>
   <column label="realName" name="realName" type="String" xid="xid5"></column>
   <column label="uName" name="uName" type="String" xid="xid6"></column>
   <column label="age" name="age" type="String" xid="xid7"></column>
   <column label="department" name="department" type="String" xid="xid8"></column>
   <column label="ofiice" name="ofiice" type="String" xid="xid9"></column>
   <column name="col9" type="String" xid="xid10"></column></div></div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1"></span><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="欢迎注册">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">欢迎注册</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div>
  <div xid="div1"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" placeHolder="请输入手机号" bind-ref="userData.ref('phoneNumber')" style="height:35px;width:100%;"></input><input component="$UI/system/components/justep/input/password" class="form-control" xid="password1" placeHolder="请设置登录密码" style="height:35px;width:100%;" bind-ref="userData.ref('passWord')"></input><input component="$UI/system/components/justep/input/password" class="form-control" xid="password2" placeHolder="请再次输入登录密码" style="height:35px;width:100%;" bind-ref="userData.ref('passWord')"></input>
  
  
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="注册" xid="registerBtn" onClick="registerBtnClick" style="height:40px;width:100%;">
   <i xid="i1"></i>
   <span xid="span1">注册</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right" label="已有账号，返回登录" xid="button2" onClick="button2Click">
   <i xid="i2"></i>
   <span xid="span2">已有账号，返回登录</span></a></div></div>
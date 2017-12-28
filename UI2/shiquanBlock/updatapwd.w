<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:417px;top:243px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="uID">
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
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="falseDialog" style="left:41px;top:1px;" onOK="messageDialog1OK" type="OK"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
  
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="修改密码">
    <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="img:$UI/shiquanBlock/image/back.png|" onClick="{operation:'window.close'}">
   <i xid="i1"></i>
   <img src="$UI/shiquanBlock/image/back.png" xid="image1" height="20px" style="width:20px;"></img><span xid="span1"></span></a></div>
    <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">修改密码</div>
    <div class="x-titlebar-right reverse" xid="right1"></div></div> </div><div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content3" style="background-color:rgb(241,249,247);"><div xid="div1" style="padding-top:15px;height:100%;"><div xid="div2" style="background-color:#fff;"><input component="$UI/system/components/justep/input/input" class="form-control" xid="phoneNumber" style="border-radius:0;" placeHolder="手机号"></input>
  <input component="$UI/system/components/justep/input/password" class="form-control" xid="password1" style="border-radius:0;" placeHolder="原密码"></input>
  <input component="$UI/system/components/justep/input/password" class="form-control" xid="password2" placeHolder="新密码" style="border-radius:0;"></input>
  <input component="$UI/system/components/justep/input/password" class="form-control" xid="password3" placeHolder="确认密码" style="border-radius:0;"></input></div>
  <div xid="div3" align="center" style="padding:40px 0;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="button1" style="width:30%;" onClick="button1Click">
   <i xid="i2"></i>
   <span xid="span2">确定</span></a></div>
  </div></div>
  </div></div>
   </div></div>
   </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="successDialog"></span></div>
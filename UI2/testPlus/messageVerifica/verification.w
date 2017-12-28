<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" style="top:222px;left:138px;height:auto;"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#37b9ed;" title="账户安全验证">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="退出验证" xid="backBtn" onClick="backBtnClick" icon="linear linear-chevronleft" style="font-size:12px;">
   <i xid="i1" class="linear linear-chevronleft"></i>
   <span xid="span11">退出验证</span></a></div>
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">账户安全验证</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div xid="div9">
   <div class="panel-heading" xid="div11">
    <div class="media-left media-middle" xid="mediaLeft1">
     <span class="x-flex" style="width:42px;" xid="span1">手机号</span></div> 
    <div class="media-body" style="width:119px;" xid="mediaBody1">
     <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted" xid="phoneNumber" style="width:200px;border-radius:0;height:37px;"></input></div> </div> 
   <div class="panel-heading" xid="div1">
    <div class="media-left media-middle" xid="div2" style="height:37px;">
     <span class="x-flex" style="width:44px;" xid="span2">验证码</span></div> 
    <div class="media-body" xid="div3" style="height:28px;width:140px;">
     <input component="$UI/system/components/justep/input/input" class="form-control input-sm tb-noborder text-muted" xid="verifyCode" style="border-radius:0;width:127px;height:37px;"></input></div> 
    <div class="media-body" style="width:760px;" xid="div7">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="获取验证码" xid="sendsmsbutton" onClick="sendsmsButton" style="font-size:12px;color:#fff;width:100px;background-color:#37b9ed;height:37px;">
      <i xid="i3"></i>
      <span xid="span5">获取验证码</span></a></div> </div> 
   
   <div class="panel-heading" xid="div6">
    <div class="media-body" style="width:119px;" xid="div13" align="justify"></div>
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label btn-block" label="确定" xid="button2" onClick="verifyButton" style="color:#fff;background-color:#37b9ed;">
     <i xid="i2"></i>
     <span xid="span4">确定</span></a> </div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="lockerDialog" forceRefreshOnOpen="true" style="top:17px;left:89px;"></span></div>
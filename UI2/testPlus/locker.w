<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" onLoad="modelLoad" style="top:182px;left:255px;height:auto;" onunLoad="modelUnLoad"/> 

  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="48"><div component="$UI/system/components/justep/bar/bar" class="x-bar hide" xid="bar1" style="text-align:center;font-weight:normal;font-size:20px;background-color:#37b9ed;height:48px;">
  
  <div xid="div39" style="width:100%;"><label xid="label1" style="font-size:18px;"><![CDATA[]]></label></div>
  </div>
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-weight:normal;background-color:#37b9ed;">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link hide" label="退出" xid="exitbtn" onClick="exitbtnClick" style="color:#fff;font-size:16px;">
   <i xid="i1"></i>
   <span xid="span1">退出</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link hide" xid="backBtn" style="color:#fff;" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i11" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div>
   <div class="x-titlebar-title" xid="title1"><![CDATA[]]></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" style="height:100%;">
  <div xid="div1" align="center"><tr style="vertical-align: middle;text-align: center;" xid="tr1">
   <td style="vertical-align: middle;text-align: center;" xid="td1">
    <canvas xid="locker" component="$UI/system/components/justep/locker/locker" class="x-locker" mode="2" style="width:320px;height:320px;" onInput="linePoint" onPasswordSuccess="setPasswordSuccess" onCheckSuccess="lockerCheckSuccess" onCheckError="lockerCheckError" onPasswordError="lockerPasswordError" R="26"></canvas></td> </tr>
  </div>
  <div xid="div2"></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" style="width:100%;background-color:#37b9ed;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="清除手势密码" xid="button2" onClick="button2Click">
    <i xid="i2"></i>
    <span xid="span2">清除手势密码</span></a> 
   </div></div></div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:28px;left:97px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" type="OKCancel" title="提示" message="是否清除手势密码" onOK="messageDialog2OK" style="top:155px;left:37px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="exit" type="OKCancel" message="确定退出？" onOK="exitOK"></span></div>
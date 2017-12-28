<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:2px;top:173px;" onLoad="modelLoad"></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-weight:normal;font-size:20px;height:48px;" title="统计菜单">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="{operation:'window.close'}" icon="linear linear-arrowleft">
     <i xid="i7" class="linear linear-arrowleft"></i>
     <span xid="span11"></span></a> </div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">统计菜单</div>
   <div class="x-titlebar-right reverse" xid="right1">
    </div> </div></div>
   <div class="x-panel-content" xid="content1"><div xid="div7" style="height:100%;">
   <iframe name="netframe" xid="iframe" width="100%" frameborder="0" height="100%" scrolling="no" bind-load="iframeLoad"></iframe></div></div>
   </div></div>
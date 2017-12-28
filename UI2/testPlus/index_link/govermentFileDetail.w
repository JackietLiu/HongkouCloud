<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onParamsReceive="modelParamsReceive" style="top:87px;left:92px;height:auto;"/> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="文件详情">
     <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="{operation:'window.close'}" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div><div class="x-titlebar-title" xid="title1" style="font-weight:normal;">文件详情</div>
     <div class="x-titlebar-right reverse" xid="right1">
      
      
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" xid="fontBtn" style="font-size:20px;color:#fff;" onClick="{operation:'popMenu1.show'}" icon="linear linear-textformat">
   <i xid="i9" class="linear linear-textformat"></i>
   <span xid="span5">显示</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" xid="collectBtn" style="font-size:20px;color:#fff;" icon="linear linear-star">
   <i xid="i3" class="linear linear-star"></i>
   <span xid="span3"></span></a></div> </div></div><div class="x-panel-content" xid="content1"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" onScrollMove="scrollView1ScrollMove">
   <div class="x-scroll-content" xid="div2"><div xid="div4" style="padding:0 10px;background-color:#37b9ed;">
   <span xid="span1" style="font-size:22px;padding-left:10px;color:#fff;height:60px;"></span></div><div xid="div7" class="text-black lead" style="padding:15px 20px;" align="left"></div>
  </div>
   </div></div>
   </div>
  
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" xid="popMenu1" anchor="fontBtn" direction="right-bottom" opacity="0" style="top:37px;left:41px;">
   <div class="x-popMenu-overlay" xid="div15"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="fontSize">
    <li class="x-menu-item" xid="item1">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="小" xid="litFontSize" onClick="litFontSizeClick" style="text-align:center;">
      <i xid="i10"></i>
      <span xid="span6">小</span></a> </li> 
    <li class="x-menu-divider divider" xid="divider1"></li>
    <li class="x-menu-item" xid="item2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="中" xid="midFontSize" style="text-align:center;" onClick="midFontSizeClick">
      <i xid="i11"></i>
      <span xid="span12">中</span></a> </li> 
    <li class="x-menu-divider divider" xid="divider2"></li>
    <li class="x-menu-item" xid="item3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="大" xid="bigFontSize" style="text-align:center;" onClick="bigFontSizeClick">
      <i xid="i12"></i>
      <span xid="span13">大</span></a> </li> </ul> </div></div>
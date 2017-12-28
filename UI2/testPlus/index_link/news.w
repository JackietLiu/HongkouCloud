<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:130px;left:540px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="hongkouData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="标题" name="title" type="String" xid="xid2"></column>
  <column label="时间" name="date" type="String" xid="xid3"></column>
  <column name="content" type="String" xid="xid4"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="blockData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="column8"></column>
  <column label="标题" name="title" type="String" xid="column9"></column>
  <column label="时间" name="date" type="String" xid="column10"></column>
  <column label="内容" name="content" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="departmentData" idColumn="id" confirmRefresh="false">
   <column label="id" name="id" type="String" xid="column13"></column>
  <column label="标题" name="title" type="String" xid="column12"></column>
  <column label="时间" name="date" type="String" xid="column11"></column>
  <column label="内容" name="content" type="String" xid="xid6"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="100"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-weight:normal;font-size:20px;background-color:#37b9ed;height:48px;" title="新闻列表">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i7" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div> 
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">新闻列表</div>
   <div class="x-titlebar-right reverse" xid="right1">
    </div> </div>
  <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="hongkouBtn" style="background-color:#fff;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="虹口新闻" xid="hongkouBtn" target="hongkouNews" onClick='{"operation":"scrollView1.reachEndDown"}'>
   <i xid="i1"></i>
   <span xid="span2">虹口新闻</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="部门动态" xid="partmentBtn" target="partmentDym" onClick='{"operation":"scrollView2.reachEndUp"}'>
   <i xid="i3"></i>
   <span xid="span4">部门动态</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="社区新闻" xid="blockBtn" target="blockNews">
   <i xid="i4"></i>
   <span xid="span5">社区新闻</span></a></div></div>
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" routable="false" swipe="true">
   <div class="x-contents-content  x-scroll-view" xid="hongkouNews" onactive="hongkouNewsActive" supportpulldown="true" onActive="hongkouNewsActive">
    
  
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" autoAppend="false" autoPullUp="false" onPullDown="scrollView1PullDown">
   <div class="x-content-center x-pull-down container" xid="div3">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span17">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="hongkouData" limit="10" autoLoad="false" disablePullToRefresh="false" disableInfiniteLoad="false" supportpulldown="true">
    <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" style="padding:10px 0;border-bottom:1px solid #e5e5e5;">
     <div class="media" xid="media1">
      <div class="media-left" xid="mediaLeft1">
       <a href="#" xid="a1"></a></div> 
      <div class="media-body" xid="mediaBody1">
       <h4 xid="h41" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
       <span xid="span9" style="color:#989898;font-size:10px;">发布时间：</span>
       <span xid="span1" bind-text='ref("date")'></span></div> </div> </li> </ul></div></div> 
   <div class="x-content-center x-pull-up" xid="div1">
    <span class="x-pull-up-label" xid="span12">加载更多...</span></div> </div></div> 
    
   <div class="x-contents-content   x-scroll-view" xid="partmentDym" onactive="partmentDymActive" onActive="partmentDymActive">
    
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" onPullDown="scrollView2PullDown">
   <div class="x-content-center x-pull-down container" xid="div5">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"></i>
    <span class="x-pull-down-label" xid="span13">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div6"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="departmentData" limit="10" autoLoad="false" disablePullToRefresh="false">
       <ul class="x-list-template" xid="listTemplateUl2">
        <li xid="li2" style="padding:10px 0;border-bottom:1px solid #e5e5e5;" bind-click="li1Click">
         <div class="media" xid="media2">
          <div class="media-left" xid="mediaLeft2">
           <a href="#" xid="a2">
            <img class="media-object" src="" alt="" xid="image2"></img></a> </div> 
          <div class="media-body" xid="mediaBody2">
           <h4 xid="h42" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span10" style="color:#989898;font-size:10px;">发布时间：</span>
           <span xid="span6" bind-text='ref("date")'></span></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div7">
    <span class="x-pull-up-label" xid="span14">加载更多...</span></div> </div></div><div class="x-contents-content  x-scroll-view" xid="blockNews" onactive="blockNewsActive" onActive="blockNewsActive">
    
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3" onPullDown="scrollView3PullDown">
   <div class="x-content-center x-pull-down container" xid="div8">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"></i>
    <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div9"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list3" data="blockData" limit="10" autoLoad="true" disablePullToRefresh="false" disableInfiniteLoad="false">
       <ul class="x-list-template" xid="listTemplateUl3">
        <li xid="li3" style="padding:10px 0;border-bottom:1px solid #e5e5e5;" bind-click="li1Click">
         <div class="media" xid="media3">
          <div class="media-left" xid="mediaLeft3">
           <a href="#" xid="a3">
            <img class="media-object" src="" alt="" xid="image3"></img></a> </div> 
          <div class="media-body" xid="mediaBody3">
           <h4 xid="h43" bind-text='ref("title")' class="media-heading" style="color:#000;">Media heading</h4>
           <span xid="span8" style="color:#989898;font-size:10px;">发布时间：</span>
           <span xid="span7" bind-text='ref("date")'></span></div> </div> </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div10">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div> </div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="newsDetail" forceRefreshOnOpen="true" routable="true" height="80%" style="top:6px;left:131px;"></span></div>
<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:21px;left:493px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="theWorkData" idColumn="id" onCustomRefresh="theWorkDataCustomRefresh"><column name="id" type="String" xid="xid1"></column>
  <column name="title" type="String" xid="xid2"></column>
  <column name="createTime" type="String" xid="xid3"></column>
  <column name="createMan" type="String" xid="xid4"></column>
  <rule xid="rule1">
   <col name="index" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">indexOf()+1</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="newsData" queryAction="queryZtgz" url="/hongkou/hongkou" tableName="feedback_special" idColumn="ID"><column label="ID" name="ID" type="String" xid="default38"></column>
  <column label="FeedBackCategory" name="FeedBackCategory" type="String" xid="default39"></column>
  <column label="FeedBackContent" name="FeedBackContent" type="String" xid="default40"></column>
  <column label="FeedBackDate" name="FeedBackDate" type="String" xid="default41"></column>
  <column label="FCD" name="FCD" type="String" xid="default42"></column>
  <column label="LUD" name="LUD" type="String" xid="default43"></column>
  <column label="User_ID" name="User_ID" type="String" xid="default44"></column>
  <column label="Is_Audit" name="Is_Audit" type="String" xid="default45"></column>
  <column label="User_ID_Audit" name="User_ID_Audit" type="String" xid="default46"></column>
  <column label="Date_Audit" name="Date_Audit" type="String" xid="default47"></column>
  <column label="FeedBack_Title" name="FeedBack_Title" type="String" xid="default48"></column>
  <column label="Memo" name="Memo" type="String" xid="default49"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="48">
   <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#37b9ed;" title="专题工作">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i4" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a>
  </div>
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">专题工作</div>
   <div class="x-titlebar-right" xid="left2">
   </div></div>
  </div><div class="x-panel-content  x-scroll-view" xid="content1" _xid="C700123805000001A5921E06844031A0" style="bottom: 0px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div6">
    <i class="icon-ios7-reloading" xid="i5"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div7"><div component="$UI/system/components/justep/list/list" class="x-list" xid="dynamicList" data="newsData" limit="10" disablePullToRefresh="false" disableInfiniteLoad="false" autoLoad="true">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" style="width:100%;">
  <div xid="div25"><div xid="div3" class="media" style="padding:20px;" bind-click="pinglunBtnClick">
  <div xid="div8" class="media-left">
  </div><div xid="col26" style="padding-left:15px;margin-top:30px;" class="media-body">
   <div xid="div4"><span xid="span10" bind-text='ref("FeedBack_Title")'><![CDATA[标题]]></span></div>
  <div xid="div12"><label xid="label3" bind-html=' val("FeedBackContent")'><![CDATA[]]></label>
  </div><div xid="div5">
  <span xid="span1" bind-text=' $model.getDate( val("FeedBackDate"))'></span></div>
  </div>
  
  <div class="media-right" xid="mediaRight1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" xid="button3" style="color:#949494;font-size:16px;" onClick="pinglunBtnClick" icon="e-commerce e-commerce-xiaoxi">
   <i xid="i8" class="e-commerce e-commerce-xiaoxi"></i>
   <span xid="span4"></span></a></div></div><div xid="div1" style="margin-top:10px;"><img src="" alt="" xid="image7" height="220px" style="display:none;margin-left:30px;width:150px;"></img></div>
  </div><div component="$UI/system/components/justep/button/buttonGroup" class="hide btn-group btn-group-sm btn-group-justified" tabbed="true" xid="buttonGroup1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" xid="turnBtn" style="color:#949494;" icon="img:$UI/hongkou/img/share1.png|" label="0">
   <i xid="i3"></i>
   <img src="$UI/hongkou/img/share1.png" xid="image1" style="width:25px;"></img><span xid="span3">0</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="0" xid="pinglunBtn" style="color:#949494;" onClick="pinglunBtnClick">
   <i xid="i6"></i>
   <img src="$UI/hongkou/img/pinglun.png" xid="image2" style="width:25px;"></img><span xid="span6"><![CDATA[0]]></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="0" xid="zangBtn" style="color:#949494;">
   <i xid="i7"></i>
   <img src="$UI/hongkou/img/zang.png" xid="image4" style="width:25px;"></img><span xid="span7">0</span></a>
  
  </div>
  <div xid="div2" style="height:10px;background-color:#e5e5e5;width:100%;"></div>
  </li></ul> </div>
  <div xid="div21" align="center" class="hide"></div></div>
   <div class="x-content-center x-pull-up" xid="div9">
    <span xid="span8"><![CDATA[]]></span></div> </div></div>
   </div>
  <resource xid="resource2"></resource>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog" style="left:6px;top:192px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="commentDialog" style="top:38px;left:15px;"></span></div>
<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" style="top:99px;left:42px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="buildData" idColumn="ID" confirmRefresh="false">
   <column label="b_address" name="b_address" type="String" xid="xid1"></column>
   <column label="content" name="content" type="String" xid="xid2"></column>
   <column label="img" name="img" type="String" xid="xid3"></column>
   <column label="ID" name="ID" type="String" xid="xid4"></column>
   <column name="tl" type="String" xid="xid5"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full" xid="panel1">
   <div class="x-panel-top" xid="top2" height="100">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;" title="资产管理">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="backBtn" icon="img:$UI/shiquanBlock/newImage/back.png|" onClick='{"operation":"window.close"}'>
       <i xid="i2"></i>
       <img src="$UI/shiquanBlock/newImage/back.png" xid="image6" height="20px"></img>
       <span xid="span7"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">资产管理</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> 
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2" selected="propertBtn">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="物业" xid="propertBtn" target="floorContent">
      <i xid="i7"></i>
      <span xid="span9">物业</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="租控" xid="rentBtn" target="rentContent">
      <i xid="i8"></i>
      <span xid="span10">租控</span></a> </div> </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content" xid="floorContent">
      
  <div xid="div1" class=" x-scroll-view">
   
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div3">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span15">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div4"><div class="media" xid="media1" style="padding:20px 10px;">
   <div class="media-body" xid="mediaBody1" style="width:100%;">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-value="input_value" placeHolder="请输入物业名称,简介等全部或部分信息" style="width:100%;border-radius:0;"></input></div> 
   <div class="media-right" xid="mediaRight1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" xid="btn1" icon="img:$UI/shiquanBlock/newImage/Search.png|" onClick="btn_coop_searchClick" style="border-radius:0;width:80px;height:38px;">
     <i xid="i5"></i>
     <img src="$UI/shiquanBlock/newImage/Search.png" xid="image3" height="20px;"></img>
     <span xid="span3"></span></a> </div> </div><div xid="div9" style="padding:10px;">
   <span xid="span5" style="color:red;">请点击灰色条纹查看详情</span></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="buildData" autoLoad="false" limit="10" disablePullToRefresh="false" disableInfiniteLoad="false">
      <ul class="x-list-template" xid="listTemplateUl1">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("b_address")' style="padding-left:20px;"></div><li xid="li1">
        <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup3" collapsible="true" collapsed="true" title="title" style="height:auto;">
   <div class="x-control-group-title" xid="controlGroupTitle3">
    <span xid="span12" style="height:1px;display:none;"></span></div> 
   <div xid="div2" style="border-radius:5px;border:1px solid #aaa;box-shadow:3px 3px 0px #aaa;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
     <div class="x-col x-col-10 x-col-center" xid="col15">
      <img src="$UI/shiquanBlock/newImage/coop-newBuilding.png" alt="" xid="image2" height="60px" style="width:60px;"></img></div> 
     <div class="x-col" xid="col18">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
       <div class="x-col" xid="col9">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
         <label class="pull-left x-label" xid="label9" style="width:50px;"><![CDATA[地址:]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output4" bind-ref='ref("b_address")'></div></div> </div> </div> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
       <div class="x-col" xid="col11">
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
         <label class="pull-left x-label" xid="label8" style="width:50px;"><![CDATA[简介:]]></label>
         <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output3" bind-ref='ref("content")'></div></div> </div> </div> </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
     <div class="x-col" xid="col10" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="详情" xid="button3" style="width:68px;border-radius:0;" onClick="button3Click">
       <i xid="i10"></i>
       <span xid="span12">详情</span></a> </div> 
     <div class="x-col" xid="col14" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="合同" xid="button4" onClick="btn_ContractClick" style="width:68px;border-radius:0;">
       <i xid="i11"></i>
       <span xid="span13">合同</span></a> </div> 
     <div class="x-col" xid="col12" style="text-align:center;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="缴费" xid="button5" onClick="btn_PayClick" style="width:68px;border-radius:0;">
       <i xid="i12"></i>
       <span xid="span14">缴费</span></a> </div> 
     <div class="x-col" xid="col17"></div></div> </div> </div></li> 
  </ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span16">加载更多...</span></div> </div></div></div> 
     <div class="x-contents-content" xid="rentContent">
      <div xid="div5" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;" bind-click="changePage">
       <div class="media" xid="media5">
        <div class="media-left" xid="mediaLeft5">
         <img src="$UI/shiquanBlock/newImage/rent_selectRoom.png" alt="" xid="image5" height="70px" style="width:70px;"></img></div> 
        <div class="media-body" xid="mediaBody5">
         <label xid="label5" style="font-size:large;font-weight:bold;">房间查看</label></div> </div> </div> 
      <div xid="div6" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;" bind-click="changePage">
       <div class="media" xid="media6">
        <div class="media-left" xid="mediaLeft6">
         <img src="$UI/shiquanBlock/newImage/rent_mouthRent.png" alt="" xid="image8" height="70px" style="width:70px;"></img></div> 
        <div class="media-body" xid="mediaBody6">
         <label xid="label1" style="font-size:large;font-weight:bold;">本月租金</label></div> </div> </div> 
      <div xid="div7" style="padding:0 15px; box-shadow:0px 0px 10px #e5e5e5;line-height:80px;margin:30px 15px;height:80px;" bind-click="changePage">
       <div class="media" xid="media7">
        <div class="media-left" xid="mediaLeft7">
         <img src="$UI/shiquanBlock/newImage/rent_rentSta.png" alt="" xid="image9" height="70px" style="width:70px;"></img></div> 
        <div class="media-body" xid="mediaBody7">
         <label xid="label2" style="font-size:large;font-weight:bold;">租金统计</label></div> </div> </div> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="Dialog" type="OK" title="温馨提示" message="对不起，没有找到符合条件的记录！" onOK="exitDialogOK"></span></div>
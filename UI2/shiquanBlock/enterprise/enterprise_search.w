<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="btn_coop_searchClick"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="enterpriseData" idColumn="ID" confirmRefresh="false">
   <column label="ent_address" name="ent_address" type="String" xid="xid1"></column>
  <column label="ent_rep" name="ent_rep" type="String" xid="xid2"></column>
  <column label="ent_type_text" name="ent_type_text" type="String" xid="xid3"></column>
  <column label="ID" name="ID" type="String" xid="xid4"></column>
  <column label="ent_name" name="ent_name" type="String" xid="xid5"></column>
  <column label="run_content" name="run_content" type="String" xid="xid6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" height="155"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="企业管理"
          class="x-titlebar" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title">企业管理</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      <div class="media" xid="media1" style="padding:20px 10px;">
      <div class="media-body" xid="mediaBody1" style="width:100%;">
       
  <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" bind-value="input_value" placeHolder="请输入公司名称,简介等全部或部分信息" style="width:100%;border-radius:0;"></input>
  </div> 
      <div class="media-right" xid="mediaRight1">
        <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" xid="btn1" icon="img:$UI/shiquanBlock/newImage/Search.png|" onClick="btn_coop_searchClick" style="border-radius:0;width:80px;height:39px;">
        <i xid="i5"></i>
        <img src="$UI/shiquanBlock/newImage/Search.png" xid="image3" height="20px;"></img>
        <span xid="span3"></span></a></div> 
  </div></div>  
    <div class="x-panel-content" xid="content1"><div xid="div7" class=" x-scroll-view">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView3" autoAppend="true" autoPullUp="true" style="background-color:s;">
   <div class="x-content-center x-pull-down container" xid="div8">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span9">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div9"><div xid="div2" style="padding:10px;">
   <span xid="span4" style="color:red;">请点击灰色条纹查看详情</span></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="enterpriseData" autoLoad="false" limit="10" disablePullToRefresh="false" disableInfiniteLoad="false">
      <ul class="x-list-template" xid="listTemplateUl1">
       <li xid="li1"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("ent_name")' style="padding-left:20px;"></div>
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup2" collapsible="true" collapsed="true" title="title" style="height:auto;">
   <div class="x-control-group-title" xid="controlGroupTitle2">
    <span xid="span2" style="height:1px;display:none;" bind-text='val("ent_name")'></span></div> 
    
    
  <div xid="div3" style="border-radius:5px;border:1px solid #aaa;box-shadow:3px 3px 0px #aaa;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
    <div class="x-col x-col-10 x-col-center" xid="col13">
     <img src="$UI/shiquanBlock/image/profile_pic-copy-15.png" alt="" xid="image7" height="60px" style="width:60px;"></img></div> 
    <div class="x-col" xid="col16">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
      <div class="x-col" xid="col30">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
        <label class="pull-left x-label" xid="label6" style="width:50px;">名称:</label>
        <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output6" bind-ref='ref("ent_name")'></div></div> </div> </div> 
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
      <div class="x-col" xid="col31">
       <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
        <label class="pull-left x-label" xid="label7" style="width:50px;">地址:</label>
        <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output7" bind-ref='ref("ent_address")'></div></div> </div> </div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14">
    <div class="x-col" xid="col23" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="详情" xid="btn2" style="width:68px;border-radius:0;" onClick="button3Click">
      <i xid="i4"></i>
      <span xid="span6">详情</span></a> </div> 
    <div class="x-col" xid="col24" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="联系人" xid="btn3" onClick="btn_ContractClick" style="width:68px;border-radius:0;">
      <i xid="i6"></i>
      <span xid="span8">联系人</span></a> </div> 
    <div class="x-col" xid="col25" style="text-align:center;"></div>
    <div class="x-col" xid="col29"></div></div></div></div></li>
        </ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div10">
    <span class="x-pull-up-label" xid="span10">加载更多...</span></div> </div></div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="Dialog" type="OK" title="温馨提示" message="对不起，没有找到符合条件的记录！" onOK="DialogOK"></span></div>
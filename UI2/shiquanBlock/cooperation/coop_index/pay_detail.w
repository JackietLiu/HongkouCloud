<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:103px;left:355px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="paydata" idColumn="ID" confirmRefresh="false">
   <column label="ID" name="ID" type="String" xid="xid2"></column>
  <column label="b_address" name="b_address" type="String" xid="xid14"></column>
  <column label="invoice_no" name="invoice_no" type="String" xid="xid15"></column>
  <column label="contrat_no" name="contrat_no" type="String" xid="xid16"></column>
  <column label="payer_Name" name="payer_Name" type="String" xid="xid1"></column>
  <column label="je_rent" name="je_rent" type="String" xid="xid3"></column>
  <column label="is_audit" name="is_audit" type="String" xid="xid4"></column>
  <column label="user_audit" name="user_audit" type="String" xid="xid5"></column>
  <column label="memo" name="memo" type="String" xid="xid7"></column>
  <column label="Pay_less" name="Pay_less" type="String" xid="xid8"></column>
  <column label="Pay_less_memo" name="Pay_less_memo" type="String" xid="xid9"></column>
  <column label="pay_date_txt" name="pay_date_txt" type="String" xid="xid10"></column>
  <column label="audit_date_txt" name="audit_date_txt" type="String" xid="xid11"></column>
  <column label="je_wp_txt" name="je_wp_txt" type="String" xid="xid12"></column>
  <column label="rent_txt" name="rent_txt" type="String" xid="xid13"></column>
  <column label="pay_mode_txt" name="pay_mode_txt" type="String" xid="xid17"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full" xid="panel1">
   
   <div class="x-panel-top" xid="top1" height="58">
   <div component="$UI/system/components/justep/titleBar/titleBar" title="缴费详情" class="x-titlebar" xid="titleBar2" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
    <div class="x-titlebar-left" xid="left2">
     <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button1">
      <i class="icon-chevron-left" xid="i1"></i>
      <span xid="span1"></span></a> </div> 
    <div class="x-titlebar-title" xid="title2">缴费详情</div>
    <div class="x-titlebar-right reverse" xid="right2"></div></div> </div><div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content" xid="floorContent">
      
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="paydata" autoLoad="false">
       <ul class="x-list-template" xid="listTemplateUl1">
        <li xid="li1" bind-click="list1Click"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" xid="controlGroup2" collapsible="true" collapsed="false" title="title" style="height:auto;">
         <div class="x-control-group-title" xid="controlGroupTitle2">
          <span xid="span2" style="height:1px;display:none;" bind-text='ref("b_address")'></span>
          
  
  
  </div> 
         <div xid="div2" style="background:url($UI/shiquanBlock/img/no_audit.png) no-repeat 50% 50%;background-size:170px 90px;"><div xid="div1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
    <label class="x-label" xid="label1"><![CDATA[金额]]></label>
    <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='ref("je_rent")'></div></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
             <div class="x-col" xid="col31">
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
               <label class="x-label" xid="label7"><![CDATA[付款日期]]></label>
               <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output7" bind-ref='ref("pay_date_txt")'></div></div> </div> 
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
             <div class="x-col" xid="col30">
              <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
               <label class="x-label" xid="label6">地址</label>
               <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output6" bind-ref='ref("b_address")'></div></div> </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col3" style="width:20%;"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2"><![CDATA[付款人]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output pull-left x-edit" xid="output2" bind-ref='ref("payer_Name")'></div></div></div>
  <div class="x-col" xid="col5"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='ref("rent_txt")'></div></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col17"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="label8"><![CDATA[代收]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output11" bind-ref='ref("je_wp_txt")'><div component="$UI/system/components/justep/output/output" class="x-output" xid="output12" bind-ref='$model.paydata.ref("je_wp_txt")'></div></div></div>
  </div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label9"><![CDATA[付款途径]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output13" bind-ref='ref("pay_mode_txt")'><div component="$UI/system/components/justep/output/output" class="x-output" xid="output14" bind-ref='ref("pay_mode_txt")'></div></div></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col20"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
   <label class="x-label" xid="label10"><![CDATA[金额减免]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output15" bind-ref='ref("Pay_less")'><div component="$UI/system/components/justep/output/output" class="x-output" xid="output16" bind-ref='$model.paydata.ref("Pay_less")'></div></div></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
   <label class="x-label" xid="label11"><![CDATA[减免原因]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output17" bind-ref='ref("Pay_less_memo")'><div component="$UI/system/components/justep/output/output" class="x-output" xid="output18" bind-ref='$model.paydata.ref("Pay_less_memo")'></div></div></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row9">
   <div class="x-col" xid="col27"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
   <label class="x-label" xid="label14"><![CDATA[审核人]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output23" bind-ref='ref("user_audit")'></div></div></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col15"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
   <label class="x-label" xid="label15"><![CDATA[审核日期]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output24" bind-ref='ref("audit_date_txt")'></div></div></div>
   </div>
  </div>
  </div></div></li> 
  </ul> </div> </div> </div> </div> 
  </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="Dialog" type="OK" title="温馨提示" message="对不起，没有缴费记录！" onOK="DialogOK"></span></div>
<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2" height="58">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="企业详情" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="button1">
       <i class="icon-chevron-left" xid="i1"></i>
       <span xid="span1"></span></a> </div> 
     <div class="x-titlebar-title" xid="title1">企业详情</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content2" style="padding:20px 20px;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label9" style="width:90px;font-weight:bold;"><![CDATA[企业名称]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='$model.enterprisedata.ref("ent_name")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
     <label class="x-label" xid="label10" style="width:90px;font-weight:bold;"><![CDATA[企业类型]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='$model.enterprisedata.ref("ent_type_text")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
     <label class="x-label" xid="label8" style="width:90px;font-weight:bold;"><![CDATA[法人]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='$model.enterprisedata.ref("ent_rep")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
     <label class="x-label" xid="label1" style="width:90px;font-weight:bold;"><![CDATA[办公地址]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" bind-ref='$model.enterprisedata.ref("ent_address")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
     <label class="x-label" xid="label11" style="width:90px;font-weight:bold;"><![CDATA[电邮]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" bind-ref='$model.enterprisedata.ref("ent_mail")' style="width:971px;"></div></div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
     <label class="x-label" xid="label7" style="width:90px;font-weight:bold;"><![CDATA[注册资金]]></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" bind-ref='$model.enterprisedata.ref("reg_capital")' style="width:971px;"></div></div> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit13">
   <label class="x-label" xid="label13" style="width:90px;font-weight:bold;"><![CDATA[成立日期]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output13" bind-ref='$model.enterprisedata.ref("setup_date_Txt")' style="width:971px;" format="yyyy-MM-dd"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
   <label class="x-label" xid="label14" style="width:90px;font-weight:bold;"><![CDATA[经营期限]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output14" bind-ref='$model.enterprisedata.ref("fromto")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
   <label class="x-label" xid="label15" style="width:90px;font-weight:bold;"><![CDATA[统一社会信用代码]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output15" bind-ref='$model.enterprisedata.ref("allin1_no")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
   <label class="x-label" xid="label16" style="width:90px;font-weight:bold;"><![CDATA[证照编号]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output16" bind-ref='$model.enterprisedata.ref("license_no")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit17">
   <label class="x-label" xid="label17" style="width:90px;font-weight:bold;"><![CDATA[注册号]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output17" bind-ref='$model.enterprisedata.ref("reg_no")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
   <label class="x-label" xid="label18" style="width:90px;font-weight:bold;"><![CDATA[住所]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output18" bind-ref='$model.enterprisedata.ref("reg_address")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit19">
   <label class="x-label" xid="label19" style="width:90px;font-weight:bold;"><![CDATA[经营范围]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output19" bind-ref='$model.enterprisedata.ref("run_content")' style="width:971px;"></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit20">
   <label class="x-label" xid="label20" style="width:90px;font-weight:bold;"><![CDATA[备注]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output20" bind-ref='$model.enterprisedata.ref("memo")' style="width:971px;"></div></div></div> 
   </div><div component="$UI/system/components/justep/model/model" xid="model" style="top:75px;left:642px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="enterprisedata" idColumn="ID" confirmRefresh="false">
   <column label="ID" name="ID" type="String" xid="xid2"></column>
  <column label="ent_name" name="ent_name" type="String" xid="xid1"></column>
  <column label="ent_rep" name="ent_rep" type="String" xid="xid3"></column>
  <column label="fromto" name="fromto" type="String" xid="xid4"></column>
  <column label="ent_address" name="ent_address" type="String" xid="xid6"></column>
  <column label="ent_mail" name="ent_mail" type="String" xid="xid7"></column>
  <column label="ent_type_text" name="ent_type_text" type="String" xid="xid8"></column>
  <column label="memo" name="memo" type="String" xid="xid9"></column>
  <column label="reg_capital" name="reg_capital" type="String" xid="xid5"></column>
  <column label="setup_date" name="setup_date_Txt" type="String" xid="xid10"></column>
  <column label="run_date" name="run_date" type="String" xid="xid11"></column>
  <column label="run_content" name="run_content" type="String" xid="xid12"></column>
  <column label="reg_no" name="reg_no" type="String" xid="xid13"></column>
  <column label="license_no" name="license_no" type="String" xid="xid14"></column>
  <column label="allin1_no" name="allin1_no" type="String" xid="xid15"></column>
  <column label="reg_address" name="reg_address" type="String" xid="xid16"></column></div></div>  
  </div>
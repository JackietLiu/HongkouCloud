<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:354px;left:233px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1" height="58"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="居住人员信息表"
          class="x-titlebar" style="line-height:35px;background-color:#007afe;font-weight:normal;font-size:medium;font-style:normal;height:58px;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title" style="font-weight:normal;">居住人员信息表</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/fragment/form/formRow5Btn2" xid="formRow5Btn21" style="height:200%;"><div xid="div1" style="height:100%;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit1" style="padding-left:10px;width:50%;">
     <label class="x-label" xid="label1"><![CDATA[门牌号]]></label>
     <div class="x-edit" xid="div2">
      <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select1"></select></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit2" style="padding-left:10px;">
     <label class="x-label" xid="label2"><![CDATA[姓名]]></label>
     <div class="x-edit" xid="div3">
      <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2"></input></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit3" style="padding-left:10px;width:40%;">
     <label class="x-label" xid="label3"><![CDATA[性别]]></label>
     <div class="x-edit" xid="div4">
      <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select2"></select></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit4" style="padding-left:10px;">
     <label class="x-label" xid="label4"><![CDATA[与业主关系]]></label>
     <div class="x-edit" xid="div5">
      <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select3"></select></div> </div> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit5" style="padding-left:10px;">
     <label class="x-label" xid="label5"><![CDATA[联系电话]]></label>
     <div class="x-edit" xid="div6">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="input3"></input></div> </div> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit6" style="padding-left:10px;width:55%;">
   <label class="x-label" xid="label6"><![CDATA[出生日期]]></label>
   <div class="x-edit" xid="div8">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" dataType="Date"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7" style="padding-left:10px;">
   <label class="x-label" xid="label7"><![CDATA[民族]]></label>
   <div class="x-edit" xid="div9">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select5"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit8" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label8"><![CDATA[政治面貌]]></label>
   <div class="x-edit" xid="div10">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select6"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit9" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label9"><![CDATA[党员]]></label>
   <div class="x-edit" xid="div11">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select7"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit11" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label11"><![CDATA[身份证号码]]></label>
   <div class="x-edit" xid="div13">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input4"></input></div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit10" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label10"><![CDATA[文化程度]]></label>
   <div class="x-edit" xid="div12">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select8"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit12" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label12"><![CDATA[户籍性质]]></label>
   <div class="x-edit" xid="div14">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select9"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit13" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label13"><![CDATA[户籍地址]]></label>
   <div class="x-edit" xid="div15">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input5"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit14" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label14"><![CDATA[户口性质]]></label>
   <div class="x-edit" xid="div16">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select10"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit15" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label15"><![CDATA[国籍]]></label>
   <div class="x-edit" xid="div17">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select11"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit16" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label16"><![CDATA[工作单位及最高职位]]></label>
   <div class="x-edit" xid="div18">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input6"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit17" style="padding-left:10px;width:34%;">
   <label class="x-label" xid="label17"><![CDATA[高休干部]]></label>
   <div class="x-edit" xid="div19">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select12"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit18" style="padding-left:10px;width:33%;">
   <label class="x-label" xid="label18"><![CDATA[归侨]]></label>
   <div class="x-edit" xid="div20">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select13"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit19" style="padding-left:10px;width:33%;">
   <label class="x-label" xid="label19"><![CDATA[侨眷]]></label>
   <div class="x-edit" xid="div21">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select14"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit20" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label20"><![CDATA[少数民族]]></label>
   <div class="x-edit" xid="div22">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select15"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit21" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label21"><![CDATA[市区级以上劳模]]></label>
   <div class="x-edit" xid="div23">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select16"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit28" style="padding-left:10px;width:33%;">
   <label class="x-label" xid="label28"><![CDATA[独居]]></label>
   <div class="x-edit" xid="div30">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select23"></select></div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit23" style="padding-left:10px;width:33%;">
   <label class="x-label" xid="label23"><![CDATA[空巢]]></label>
   <div class="x-edit" xid="div25">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select17"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit24" style="padding-left:10px;width:34%;">
   <label class="x-label" xid="label22"><![CDATA[大病重病]]></label>
   <div class="x-edit" xid="div26">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select19"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit22" style="width:32%;padding-left:10px;">
   <label class="x-label" xid="label24"><![CDATA[低保]]></label>
   <div class="x-edit" xid="div24">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select18"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit25" style="padding-left:10px;width:34%;">
   <label class="x-label" xid="label26"><![CDATA[优抚对象]]></label>
   <div class="x-edit" xid="div28">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select21"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit26" style="padding-left:10px;width:34%;">
   <label class="x-label" xid="label25"><![CDATA[残疾类别]]></label>
   <div class="x-edit" xid="div27">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select20"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit27" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label27"><![CDATA[残疾等级]]></label>
   <div class="x-edit" xid="div29">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input7"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit29" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label29"><![CDATA[孕妇]]></label>
   <div class="x-edit" xid="div31">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select24"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit30" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label30"><![CDATA[独生子女(未领证)]]></label>
   <div class="x-edit" xid="div32">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select25"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit31" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label31"><![CDATA[独生子女(已领证)]]></label>
   <div class="x-edit" xid="div33">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select26"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit32" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label32"><![CDATA[独生子女(伤残)]]></label>
   <div class="x-edit" xid="div34">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select27"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit33" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label33"><![CDATA[独生子女(死亡)]]></label>
   <div class="x-edit" xid="div35">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select28"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit34" style="padding-left:10px;width:40%;">
   <label class="x-label" xid="label34"><![CDATA[育龄妇女]]></label>
   <div class="x-edit" xid="div36">
    <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select29"></select></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit35" style="padding-left:10px;width:60%;">
   <label class="x-label" xid="label35"><![CDATA[生育子女数(计划内)]]></label>
   <div class="x-edit" xid="div37">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input8"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit36" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label36"><![CDATA[生育子女数(计划外)]]></label>
   <div class="x-edit" xid="div38">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input9"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit37" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label37"><![CDATA[生育子女数(征收社会抚养费)]]></label>
   <div class="x-edit" xid="div39">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input10"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit38" style="padding-left:10px;width:100%;">
   <label class="x-label" xid="label38"><![CDATA[备注]]></label>
   <div class="x-edit" xid="div40">
    <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea1"></textarea></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit39" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label39"><![CDATA[填表人]]></label>
   <div class="x-edit" xid="div41">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input11"></input></div> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit pull-left" xid="labelEdit40" style="width:50%;padding-left:10px;">
   <label class="x-label" xid="label40"><![CDATA[填表日期]]></label>
   <div class="x-edit" xid="div42">
    <input component="$UI/system/components/justep/input/input" class="form-control" xid="input12" dataType="Date"></input></div> </div></div><div xid="div7" align="right">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="保存" xid="saveBtn" style="border-radius:0;margin-right:10px;">
     <i xid="i2"></i>
     <span xid="span7">保存</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn x-orange" label="退出" xid="exitBtn" style="border-radius:0;margin-right:10px;">
     <i xid="i3"></i>
     <span xid="span8">退出</span></a> </div></div></div>
  </div> 
</div>
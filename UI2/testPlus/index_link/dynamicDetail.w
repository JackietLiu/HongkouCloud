<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:251px;left:469px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="commentData" idColumn="pID" confirmRefresh="false"><column label="评论id" name="pID" type="String" xid="xid1"></column>
  <column label="发表图片" name="pImage" type="String" xid="xid2"></column>
  <column label="评论内容" name="pContent" type="String" xid="xid3"></column>
  <column label="评论者" name="pName" type="String" xid="xid4"></column>
  <column label="评论时间" name="pDate" type="DateTime" xid="xid5"></column>
  <column label="动态id" name="dID" type="String" xid="xid6"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="dynamicData" idColumn="FCB"><column name="FCB" type="String" xid="xid13"></column>
  <column name="id" type="String" xid="xid7"></column>
  <column name="title" type="String" xid="xid8"></column>
  <column name="createTime" type="DateTime" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="cmtData" queryAction="queryComment" saveAction="saveComment" url="/hongkou/hongkou" tableName="comment" idColumn="pid" confirmDelete="false" confirmRefresh="false" orderBy="pDate:desc"><column label="pID" name="pid" type="String" xid="default1"></column>
  <column label="评论内容" name="pcontent" type="String" xid="default2"></column>
  <column label="评论人姓名" name="pname" type="String" xid="default3"></column>
  <column label="评论时间" name="pdate" type="String" xid="default4"></column>
  <column label="动态ID" name="did" type="String" xid="default5"></column>
  <column label="评论人头像" name="pimage" type="String" xid="default6"></column>
  <column label="评论类型：0为专题工作评论，1为软件评论" name="type" type="String" xid="default7"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#37b9ed;" title="消息正文">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i1" class="linear linear-arrowleft"></i>
   <span xid="span11"></span></a></div>
   <div class="x-titlebar-title" xid="title1" style="font-weight:normal;">消息正文</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C702F825A1D000011E1F1A601D4B8020" style="bottom: 0px;">
  
  
  
  
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel7" style="border-color:#fff;">
   
   <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div2">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span4">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div6"><div xid="div25" style="padding:10px 20px;">
   <div xid="div3" class="media">
    <div xid="col26" class="media-body">
     <div xid="div12">
      <label xid="label3"><![CDATA[]]></label>
      </div><div xid="div4">
      <span xid="span10"><![CDATA[]]></span></div> 
      
     <div xid="div5" style="color:#aaa;font-size:12px;">
      <span xid="span1"><![CDATA[发布时间：]]></span><span xid="span3"></span>
  </div> </div> </div> 
   </div><div xid="div17" style="height:40px;"><div xid="div18"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label="评论" xid="button7" style="color:#000;text-align:left;">
   <i xid="i9"></i>
   <span xid="span13">评论</span></a></div></div><div component="$UI/system/components/justep/list/list" class="x-list" xid="cmtList" autoLoad="false" limit="10" disablePullToRefresh="false" data="cmtData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" class="panel-heading x-nopadding" style="height:90px;">
      
  <div xid="div10"><div class="media" xid="div16">
      <div xid="div9" class="media-left"><img src="" alt="" xid="image1" bind-attr-src=' val("pimage")' style="height:40px;border-radius:100%;width:40px;"></img></div><div class="media-body" xid="div16">
       <span xid="span14" bind-text='ref("pname")' style="color:#f37116">姓名</span>
       <span xid="span15" class="text-primary"></span>
       <span xid="span15" class="pull-right text-muted"></span>
       <div class="text-muted" xid="div16">
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("pcontent")'></div>
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" format="yyyy-MM-dd hh:mm" style="color:#989898;font-size:10px;" bind-ref='ref("pdate")'></div></div> 
       <div bind-text=' $object.val("fContent")' xid="div16" class="text-muted"></div></div> 
  </div></div></li> </ul> </div>
  <div xid="div19" align="center"></div><div xid="div15" style="height:100%;" align="center" class="hide media-body"><img src="$UI/hongkou/newImage/sofa.png" alt="" xid="image2" height="40px"></img><label xid="label1" style="color:#989898;"><![CDATA[该动态还没有人发布评论，快来抢占沙发吧]]></label>
  </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div7">
    </div> </div></div></div>
   <div class="x-panel-bottom" xid="bottom4" style="padding:0 20px;"><div xid="div11" class="media"><div xid="div13" class="media-body"><input component="$UI/system/components/justep/input/input" class="form-control" xid="comContent" maxLength="160" placeHolder="请输入评语，1-160字" style="border-radius:0;"></input></div>
  <div xid="div14" class="media-right"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="评论" xid="submit" onClick="submitClick" style="border-radius:0;">
   <i xid="i6"></i>
   <span xid="span8">评论</span></a>
  </div></div></div></div></div>
<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:90px;top:249px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="cmtData" queryAction="queryComment" saveAction="saveComment" url="/hongkou/hongkou" tableName="comment" idColumn="pid" orderBy="pDate:desc" confirmDelete="false" confirmRefresh="false"><column label="pID" name="pid" type="String" xid="default1"></column>
  <column label="评论内容" name="pcontent" type="String" xid="default2"></column>
  <column label="评论人姓名" name="pname" type="String" xid="default3"></column>
  <column label="评论时间" name="pdate" type="String" xid="default4"></column>
  <column label="动态ID" name="did" type="String" xid="default5"></column>
  <column label="评论人头像" name="pimage" type="String" xid="default6"></column>
  <column label="评论类型：0为专题工作评论，1为软件评论" name="type" type="String" xid="default7"></column>
  <rule xid="rule1">
   <col name="pDate" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default8"></expr></calculate> 
    <defaultValue xid="default9">
     <expr xid="default10"></expr></defaultValue> </col> </rule></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryUsers2" url="/hongkou/hongkou" tableName="t_s_base_user" idColumn="id"><column label="ID" name="id" type="String" xid="default11"></column>
  <column label="同步流程" name="activitisync" type="Integer" xid="default12"></column>
  <column label="浏览器" name="browser" type="String" xid="default13"></column>
  <column label="密码" name="password" type="String" xid="default14"></column>
  <column label="真实名字" name="realname" type="String" xid="default15"></column>
  <column label="签名" name="signature" type="String" xid="default16"></column>
  <column label="有效状态" name="status" type="Integer" xid="default17"></column>
  <column label="用户KEY" name="userkey" type="String" xid="default18"></column>
  <column label="用户账号" name="username" type="String" xid="default19"></column>
  <column label="部门ID" name="departid" type="String" xid="default20"></column>
  <column label="删除状态" name="delete_flag" type="Integer" xid="default21"></column>
  <column label="邮箱" name="Email" type="String" xid="default22"></column>
  <column label="memo" name="memo" type="String" xid="default23"></column>
  <column label="姓名" name="usernamereal" type="String" xid="default24"></column>
  <column label="性别" name="Sex" type="Integer" xid="default25"></column>
  <column label="idType" name="idtype" type="String" xid="default26"></column>
  <column label="idNo" name="idno" type="String" xid="default27"></column>
  <column label="birthday" name="birthday" type="String" xid="default28"></column>
  <column label="头衔" name="persontype" type="String" xid="default29"></column>
  <column label="politic" name="politic" type="String" xid="default30"></column>
  <column label="mobileNo" name="mobileno" type="String" xid="default31"></column>
  <column label="partyTitle" name="partytitle" type="String" xid="default32"></column>
  <column label="titleLevel" name="titlelevel" type="String" xid="default33"></column>
  <column label="rightLevel" name="rightlevel" type="String" xid="default34"></column>
  <column label="办公室电话1" name="teloffice1" type="String" xid="default35"></column>
  <column label="办公室电话2" name="teloffice2" type="String" xid="default36"></column>
  <column label="传真" name="faxno" type="String" xid="default37"></column>
  <column label="faxNet" name="faxnet" type="String" xid="default38"></column>
  <column label="faxVirtul" name="faxvirtul" type="String" xid="default39"></column>
  <column label="deptCode1" name="deptcode1" type="String" xid="default40"></column>
  <column label="deptCode2" name="deptcode2" type="String" xid="default41"></column>
  <column label="deptcode" name="deptcode" type="String" xid="default42"></column>
  <column label="deptname" name="deptname" type="String" xid="default43"></column>
  <column label="titlesname" name="titlesname" type="String" xid="default44"></column>
  <column label="jobname" name="jobname" type="String" xid="default45"></column>
  <column label="sortIndex" name="sortindex" type="String" xid="default46"></column>
  <column label="邮箱用户" name="emailuser" type="String" xid="default47"></column>
  <column label="邮箱密码" name="emailpass" type="String" xid="default48"></column>
  <column label="头衔" name="headerimg" type="String" xid="default49"></column>
  <column label="默认空间" name="totalsize" type="Double" xid="default50"></column>
  <column label="手势密码" name="locker" type="String" xid="default51"></column></div></div>  
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="commentOver" opacity="0.4" position="bottom">
   <div class="x-popOver-overlay" xid="div9"></div>
   <div class="x-popOver-content" xid="div10" style="width:100%;padding:10px 0;background-color:white;"><div class="form-group" xid="formGroup1">
   <div class="col-sm-8" xid="col4"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input" placeHolder="输入需要评论的内容，最多200字" style="border-radius:0;"></input></div>
   <div class="col-sm-4" xid="col5" style="text-align:center;padding-top:20px;"><a component="$UI/system/components/justep/button/button" class="btn btn-success btn-block" label="提交评论" xid="submit" style="border-radius:0;" onClick="submitClick">
   <i xid="i5"></i>
   <span xid="span6">提交评论</span></a></div>
   </div></div></div><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" style="background-color:#37b9ed;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i9" class="linear linear-arrowleft"></i>
   <span xid="span16"></span></a></div>  
          <div style="font-weight:normal;" class="x-titlebar-title"><div xid="div1" align="center"><span xid="span1"><![CDATA[软件详情]]></span></div></div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1">
  
  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><div xid="div5" class=" x-scroll-view">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" noMoreLoadLabel="没有更多评论." pullUpLabel="加载更多评论">
   <div class="x-content-center x-pull-down container" xid="div11">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i6"></i>
    <span class="x-pull-down-label" xid="span7">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div12"><div xid="div2" style="border-bottom:1px solid #e5e5e5;height:200px;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="height:160px;">
   <div class="x-col x-col-33" xid="col8" style="height:150px;">
    
  <div xid="div8" style="height:130px;width:130px;">
  <img src=" " alt="" xid="image1" style="height:130px;width:130px;"></img></div></div> 
   <div class="x-col" xid="col9" style="height:150px;padding-left:20px;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="height:25%;">
     <div class="x-col" xid="col11">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3"></div>
  </div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="height:75%;">
     <div class="x-col" xid="col14">
      <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output1" style="height:90px;overflow:hidden;"></div></div> </div> </div> </div>
  <div xid="div3"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-50" xid="col1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-left" label="1" xid="button1" icon="img:$UI/testPlus/images/img/heart.png|">
   <i xid="i1"></i>
   <img src="$UI/testPlus/images/img/heart.png" xid="image2" style="width:25px;"></img><span xid="span2"><![CDATA[0]]></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-icon-left" label="0" xid="button2" icon="img:$UI/testPlus/images/img/Comment-Icon.png|">
   <i xid="i2"></i>
   <img src="$UI/testPlus/images/img/Comment-Icon.png" xid="image3" style="width:25px;"></img><span xid="span3">0</span></a></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="hide btn btn-link btn-xs btn-icon-right" label="分享" xid="button3" icon="img:$UI/testPlus/images/img/Share-Icon.png|">
   <i xid="i3"></i>
   <img src="$UI/testPlus/images/img/Share-Icon.png" xid="image4" style="width:25px;"></img><span xid="span4">分享</span></a></div></div></div></div><div xid="div4" style="margin-top:30px;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-block" label="我要评论" xid="button4" onClick="{operation:'commentOver.show'}" icon="img:$UI/testPlus/images/img/Comment-Icon.png|">
   <i xid="i4"></i>
   <img xid="image7" style="width:30px;" src="$UI/testPlus/images/img/Comment-Icon.png"></img><span xid="span5">我要评论</span></a></div><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" autoLoad="true" limit="10" disablePullToRefresh="false" data="cmtData">
     <ul class="x-list-template" xid="listTemplateUl2">
      <li xid="li2" class="panel-heading x-nopadding" style="height:90px;">
       <div class="media" xid="div16">
   <div class="media-left" xid="mediaLeft1">
    <a href="#" xid="a1">
     <img class="media-object" src="" alt="" xid="image5" bind-attr-src=' val("pimage")' style="width:40px;height:40px;border-radius:100%;" height="30px"></img></a> </div> 
   <div class="media-body" xid="div16">
    <span xid="span14" style="color:#f37116" bind-text='ref("pname")'>姓名</span>
    <span xid="span15" class="text-primary"></span>
    <span xid="span15" class="pull-right text-muted"></span>
    <div class="text-muted" xid="div16">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("pcontent")'></div>
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" format="yyyy-MM-dd hh:mm" style="color:#989898;font-size:10px;" bind-ref='ref("pdate")'></div></div> 
    <div bind-text=' $object.val("fContent")' xid="div16" class="text-muted"></div></div> </div></li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div13">
    <span class="x-pull-up-label" xid="span8">加载更多评论</span></div> </div></div>
  </div></div></div>
  <div xid="bottom1" style="height:48px;line-height:48px;border-radius:48px;background-color:#f0eff2;" class="x-panel-bottom">
  <div xid="div7" align="center" style="height:48px;line-height:48px;border-radius:48px;" class="bg">
   <span xid="span9" style="color:#fff;"><![CDATA[下载]]></span><span xid="span11" style="color:#fff;"><![CDATA[（]]></span><label xid="label1" style="color:#fff;"></label><span xid="span10" style="color:#fff;"><![CDATA[）]]></span>
  <div xid="div6" style="line-height:48px;font-size:16px;height:48px;" align="center"></div>
  </div></div></div> 

  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="comfireDialog" type="YesNo" onYes="comfireDialogYes"></span></div>
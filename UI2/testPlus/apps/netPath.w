<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:154px;top:268px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="filesData" idColumn="fId" confirmRefresh="false"><column label="文件名" name="fFileName" type="String" xid="xid2"></column>
  <column label="下载地址" name="fDownloadPath" type="String" xid="xid4"></column>
  <column label="文件大小" name="fileSize" type="String" xid="xid7"></column>
  <column label="fId" name="fId" type="String" xid="xid5"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data" idColumn="id" autoNew="false" limit="-1" confirmRefresh="false" confirmDelete="false" onValueChanged="dataValueChanged">
   <column name="id" type="String" xid="column2"></column>
   <column name="fileName" type="String" xid="column1"></column>
   <data xid="default9">[{&quot;id&quot;:&quot;1&quot;,&quot;fileName&quot;:&quot;&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="userData" idColumn="id" confirmDelete="false" confirmRefresh="false"><column label="userID" name="id" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="paiData" queryAction="queryPai_pictures" saveAction="savePai_pictures" url="/hongkou/hongkou" tableName="pai_pictures" idColumn="fID" confirmDelete="false" confirmRefresh="false"><column label="fID" name="fID" type="String" xid="default11"></column>
  <column label="fFileName" name="fFileName" type="String" xid="default12"></column>
  <column label="预览地址" name="fPreviewPath" type="String" xid="default13"></column>
  <column label="下载地址" name="fDownloadPath" type="String" xid="default14"></column>
  <column label="建立时间" name="fCreateTime" type="String" xid="default15"></column>
  <column label="描述" name="fDescription" type="String" xid="default16"></column>
  <column label="地理位置" name="fAddress" type="String" xid="default17"></column>
  <column label="定位" name="fPositioning" type="String" xid="default18"></column>
  <column label="fUser" name="fUser" type="String" xid="default19"></column>
  <column label="文件大小" name="fFileSize" type="Double" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="personData" queryAction="queryUsers2" url="/hongkou/hongkou" tableName="t_s_base_user" idColumn="id"><column label="ID" name="id" type="String" xid="default1"></column>
  <column label="同步流程" name="activitisync" type="Integer" xid="default2"></column>
  <column label="浏览器" name="browser" type="String" xid="default3"></column>
  <column label="密码" name="password" type="String" xid="default4"></column>
  <column label="真实名字" name="realname" type="String" xid="default5"></column>
  <column label="签名" name="signature" type="String" xid="default6"></column>
  <column label="有效状态" name="status" type="Integer" xid="default7"></column>
  <column label="用户KEY" name="userkey" type="String" xid="default8"></column>
  <column label="用户账号" name="username" type="String" xid="default10"></column>
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
<div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" xid="sharePopOver" position="bottom" direction="right-bottom" opacity="0.5" style="buttom:0;background-color:#FFFFFF;">
   <div class="x-popOver-overlay" xid="div9"></div>
   <div class="x-full x-popOver-content panel" xid="div15"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col17"></div>
   <div class="x-col" xid="col18" style="text-align:center;"><span xid="span4" style="font-size:15px;font-weight:bold;"><![CDATA[分享到]]></span></div>
   <div class="x-col" xid="col19"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row13">
   <div class="x-col" xid="col24" style="text-align:center"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="信息" xid="button1" style="height:100px;width:100px;" icon="img:$UI/hongkou/img/net_bigmessage.png|">
   <i xid="i6"></i>
   <img src="$UI/hongkou/img/net_bigmessage.png" xid="image17" style="width:70px;" height="70px"></img><span xid="span5" style="color:#000;">信息</span></a></div>
   <div class="x-col" xid="col25" style="text-align:center"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="邮箱" xid="button5" style="height:100px;width:100px;" icon="img:$UI/hongkou/img/net_bigemails.png|">
   <i xid="i13"></i>
   <img src="$UI/hongkou/img/net_bigemails.png" xid="image18" style="width:70px;" height="70px"></img><span xid="span15" style="color:#000;">邮箱</span></a></div>
   <div class="x-col" xid="col26" style="text-align:center"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="交流" xid="button6" style="height:100px;width:100px;" icon="img:$UI/hongkou/img/net_chat.png|">
   <i xid="i14"></i>
   <img src="$UI/hongkou/img/net_chat.png" xid="image19" style="width:70px;" height="70px"></img><span xid="span16" style="color:#000;">交流</span></a></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row14" style="text-align:center">
   <div class="x-col" xid="col28" style="padding-top:50px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消" xid="button11" style="border-color:#989898;color:#989898;line-height:20px;border-radius:20px;height:40px;background-color:#fff;width:75%;" onClick="{operation:'sharePopOver.hide'}">
   <i xid="i15"></i>
   <span xid="span17">取消</span></a></div>
   </div></div></div><div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" xid="pathPopMenu" dismissible="true" autoHidable="true" anchor="titleBar1" style="top:10px;left:6px;">
   <div class="x-popMenu-overlay" xid="div20"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu  x-popMenu-content" xid="menu3" style="border-radius:0;width:150px;"><li class="x-menu-item" xid="item3">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="搜索" xid="button15" style="line-height:30px;" icon="img:$UI/hongkou/img/net_search.png|">
    <i xid="i16"></i>
    <img src="$UI/hongkou/img/net_search.png" xid="image1" style="width:20px;"></img><span xid="span29" style="margin-left:10px;">搜索</span></a> </li>
  <li class="x-menu-divider divider" xid="divider1"></li><li class="x-menu-item" xid="item4">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="上传文件" xid="button16" icon="img:$UI/hongkou/img/net_upload.png|">
    <i xid="i17"></i>
    <img xid="image12" style="width:20px;" src="$UI/hongkou/img/net_upload.png"></img><span xid="span30" style="margin-left:10px;">上传文件</span></a> </li>
  <li class="x-menu-divider divider" xid="divider2"></li><li class="x-menu-item" xid="item5">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="新建文件夹" xid="button17" icon="img:$UI/hongkou/img/net_newfloder.png|">
    <i xid="i18"></i>
    <img src="$UI/hongkou/img/net_newfloder.png" xid="image15" style="width:20px;"></img><span xid="span31" style="margin-left:10px;">新建文件夹</span></a> </li>
  <li class="x-menu-divider divider" xid="divider3"></li><li class="x-menu-item" xid="item8">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="刷新" xid="button20" icon="img:$UI/hongkou/img/net_refresh.png|">
    <i xid="i21"></i>
    <img src="$UI/hongkou/img/net_refresh.png" xid="image16" style="width:20px;"></img><span xid="span34" style="margin-left:10px;">刷新</span></a> </li><li class="x-menu-divider divider" xid="divider4"></li><li class="x-menu-item" xid="item6">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="排序" xid="button18" icon="img:$UI/hongkou/img/net_paixu.png|">
    <i xid="i19"></i>
    <img src="$UI/hongkou/img/net_paixu.png" xid="image13" style="width:20px;"></img><span xid="span32" style="margin-left:10px;">排序</span></a> </li>
  <li class="x-menu-divider divider" xid="divider5"></li><li class="x-menu-item" xid="item7">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="分享" xid="shareBtn" onClick="{operation:'sharePopOver.show'}" icon="img:$UI/hongkou/img/net_share.png|">
    <i xid="i20"></i>
    <img src="$UI/hongkou/img/net_share.png" xid="image14" style="width:20px;"></img><span xid="span33" style="margin-left:10px;">分享</span></a> </li>
  
  
  </ul></div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="88"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="background-color:#37b9ed;">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="backBtn" onClick="backBtnClick" icon="linear linear-arrowleft">
   <i xid="i1" class="linear linear-arrowleft"></i>
   <span xid="span1"></span></a></div> 
   <div class="x-titlebar-title" xid="title1">
    <label xid="label1"><![CDATA[网盘]]></label></div> 
   <div class="x-titlebar-right  reverse" xid="right1">
    </div> 
  </div><div xid="div7" style="padding-left:10px;padding-right:10px;color:#000">
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup2" style="padding:0 10%;border-bottom:1px solid #e5e5e5;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-bottom active" label="上传" xid="fileBtn" target="fileContent">
     <i xid="i4"></i>
     <span xid="span2">上传</span></a> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="button4" disabled="true">
   <i xid="i7"></i>
   <span xid="span12"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-bottom" label="浏览" xid="classBtn" target="classContent">
     <i xid="i5"></i>
     <span xid="span11">浏览</span></a> 
  </div> </div>
  </div>
   <div class="x-panel-content" xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" swipe="false">
   <div class="x-contents-content" xid="fileContent" onActive="fileContentActive">
  
  <div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/justep/attachment/simpleFileStore" xid="attachmentSimple" bind-ref='data.ref("fileName")' compress="false" accept="*/*">
   <div class="x-attachment" xid="div6">
    <div class="x-attachment-content x-card-border" xid="div8">
     <div class="x-doc-process" xid="div10">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar2"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div11">
      <div class="x-attachment-cell" xid="div12">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div13">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a1"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div14">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div16"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div17">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div18"></div></div> 
     <div style="clear:both;" xid="div19"></div></div> </div> 
  </div>
  <input component="$UI/system/components/justep/input/input" class="form-control userID hide" xid="input2" bind-ref='$model.personData.ref("id")' valueUpdateMode="input"></input>
  <div xid="div31" style="padding-left:20px;" class="hide"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="取消上传" xid="cancel" icon="linear linear-cross" style="border-radius:0;">
   <i xid="i2" class="linear linear-cross"></i>
   <span xid="span46">取消上传</span></a></div><div xid="div30"><span xid="span18" style="color:red;padding:0 20px;"><![CDATA[注意：文件上传成功后会在右侧浏览中显示]]></span></div>
  <div xid="div25" style="padding:0 20px;margin-top:10px;" class="hide"><span xid="span36"><![CDATA[总空间：]]></span>
  <span xid="total" style="color:red;" bind-text='$model.personData.val("totalsize")'></span>
  <span xid="span38"><![CDATA[MB]]></span>
  </div>
  <div xid="div28" style="padding:0 20px;" class="hide">
   <span xid="span40"><![CDATA[已使用空间：]]></span>
   <span xid="span42" style="color:red;"><![CDATA[]]></span>
   <span xid="span41">MB</span><span xid="span44" style="margin-left:20px;"><![CDATA[剩余空间：]]></span><span xid="span45" style="color:red;"></span><span xid="span43">MB</span></div>
  
  <div xid="div33" align="center"><div xid="charts" align="center" style="padding:20px;"></div>
  <div xid="newcharts" style="padding:20px;"></div></div></div>
  <div class="x-contents-content" xid="classContent" onActive="classContentActive" onactive="classContentActive" supportpulldown="true"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" autoPullUp="true" noMoreLoadLabel="没有更多文件了">
   <div class="x-content-center x-pull-down container" xid="div21">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i11"></i>
    <span class="x-pull-down-label" xid="span21">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div22"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="paiData" autoLoad="true" disablePullToRefresh="false" disableInfiniteLoad="false" limit="10">
   <ul class="x-list-template" xid="listTemplateUl3">
    <li xid="li3">
     <div xid="div27" style="padding:10px;">
      <span xid="span24" bind-text="$index()+1" style="color:#aaa;font-size:18px;font-weight:bold;"></span>
      <span xid="span19"><![CDATA[文件名：]]></span>
  <span xid="span23" bind-text='ref("fFileName")' style="margin:0 5px;"></span></div> 
     <div xid="div24" style="padding:10px;">
   <span xid="span25"><![CDATA[文件大小：]]></span>
   <span xid="span28" bind-text='val("fFileSize")' style="margin:0 5px;"></span>
  <span xid="span35"><![CDATA[KB]]></span></div><div class="progress hide" component="$UI/system/components/bootstrap/progress/progress" xid="progress2">
      <div class="progress-bar progress-bar-success" role="progressbar" xid="progressBar3">
       <span xid="span26">0%</span></div> </div> 
     <div xid="div26" style="margin-left:15px;">
      <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="downloadbtn" style="border-radius:0;line-height:15px;width:120px;height:30px;" label="下载文件" onClick="downloadbtnClick">
       <i xid="i10"></i>
       <span xid="span20">下载文件</span></a> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-warning" label="删除" xid="delbtn" style="border-radius:0;line-height:15px;width:120px;height:30px;" onClick="delbtnClick">
       <i xid="i12"></i>
       <span xid="span24">删除</span></a> </div> 
  </li> </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div23">
    <span class="x-pull-up-label" xid="span22">加载更多...</span></div> </div>
  </div>
  </div></div>
   </div>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" style="top:48px;left:16px;" type="OKCancel" onOK="messageDialog2OK" title="警告" message="是否确定删除网盘文件？"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog" showTitle="true" title="删除提示：" width="250px" height="200px" status="normal" forceRefreshOnOpen="true" style="top:44px;left:26px;"></span>
  </div>
特别说明
1、嵌入铛铛依赖最新版chat（可参考base/js/im.impl.js中的loginActor方法中是否有validateToken方法，有则为最新版chat）。
2、将webChat放入chat目录下。
3、启动x5运行平台。
4、将webChat/js中的im.api.js引入要集成的页面，im.api.js依赖jQuery。
       调用IM.createChat(cfg)创建会话;cfg对象包括
       url(webChat的访问路径，如:手机端：http://localhost:8080/x5/UI2/chat/webChat/index.w,pc端：http://localhost:8080/x5/UI2/chat/webChat/pc/index.w)、
       node(元素节点)、
       id(当前登录人唯一标识)、
       name(登录人姓名)。
       token(自己后台中实现发送请求获取token，请求URL:例:http://192.168.0.28:9090/v1/tokens/{0}?apiPassword=justep-dangchat;
       ip地址为dangchat-server所在的ip地址，{0}为登录者的唯一标识,apiPassword=justep-dangchat为参数)；
       
5、im.api.js中提供的方法
	创建聊天界面:IM.createChat(cfg);获取promise对象。
	显示会话列表:IM.createChat(cfg).then(fucntion(chat){
		chat.showDlgList();
	})
	显示聊天界面：IM.createChat(cfg).then(function(chat){
		chat.showMessagePage(id,name);
		id: 聊天人的id；
		name ：聊天人姓名
	})
	发送消息 ： IM.createChat(cfg).then(function(chat){
		chat.sendTextMessage(id,name,text);
		id: 聊天人的id；
		name ：聊天人姓名;
		text:消息内容
	});
	创建群组:IM.createChat(cfg).then(function(chat){
		chat.createGroup(ids, names, groupName);
		ids : 邀请成员的id数组
		names ：邀请创元的name数组
		groupName : 群组名称
	}
	退出聊天: IM.createChat(cfg).then(function(chat){
		chat.exit();
	}
	
	
	

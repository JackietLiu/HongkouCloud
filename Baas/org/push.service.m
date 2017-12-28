<?xml version="1.0" encoding="UTF-8"?>
<!-- 
WeX5 铛铛使用推送说明：
一. 部署说明
	1. 部署消息服务器
	正常发布WeX5主干版本即可（主干版本已经自带消息服务器）
	
	2. 部署PushServer
	正常发布WeX5主干版本即可（主干版本已经自带PushServer）；

	3. 修改JUSTEP_HOME/conf/server.xml文件，将其中的push-server和mqtt-server注释放开
		<push-server>http://localhost:8080/PushServer</push-server>
		<mqtt-server>tcp://localhost:1883</mqtt-server>
	
	4. 在PushServer上部署苹果证书
	将苹果证书的p12文件复制到JUSTEP_HOME/runtime/PushServer/WEB-INF/cert目录下，并修改
JUSTEP_HOME/runtime/PushServer/WEB-INF/justep.xml文件中的	
	<class certPath="/WEB-INF/cert/push.x5.p12" certPassword="justep" isDev="false">com.justep.push.processor.APNsMessageProcessor</class>
其中
	certPath: 证书路径
	certPassword: 证书的密码
	isDev: 是否是开发证书		
	
	5. 修改Actor服务器上配置的消息服务器地址
	修改 dangchat-server/conf/server.conf其中的server-uri, 指向消息服务器的地址	
justep {     
	push {       
		server-uri: "tcp://localhost:1883"       
		user: "justep"       
		password: "justep"     
	}   
}
将其中的localhost改成消息服务器的ip
	
	6. 打包App说明
	正常打包，关键是需要填写消息推送插件的mqtt server参数: tcp://[消息服务器IP]:1883		

	
二. 服务启动
	先启动消息服务（如果是linux，进入activitymq/bin目录，执行activitymq start）；再启动tomcat	
	
注意：
	1. 由于android上的铛铛应用默认不是自启动的， 有推送功能后， 建议设置成自启动，这样即使App关了， 有消息时也会推送到通知栏；
	参考: http://jingyan.baidu.com/article/b0b63dbfe8e5e44a48307019.html
	2. 铛铛必须在手机上首次登录后，才能接收到推送；	
-->

<model xmlns="http://www.justep.com/model">
	<action xmlns="http://www.w3.org/1999/xhtml" name="registerTerminalAction"
		impl="Push.registerTerminal">
		<public name="type" type="String"></public>
		<public name="terminalID" type="String"></public>
		<public name="personID" type="String"></public>
		<public name="protocol" type="String"></public>
	</action>

	<action xmlns="http://www.w3.org/1999/xhtml" name="unRegisterTerminalAction"
		impl="Push.unRegisterTerminal">
		<public name="type" type="String"></public>
		<public name="terminalID" type="String"></public>
		<public name="personID" type="String"></public>
		<public name="protocol" type="String"></public>
	</action>
</model>
package hongkou;

import java.sql.SQLException;
import java.util.Random;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class MessageCheck {
     public static JSONObject sendCheck(JSONObject params, ActionContext context) throws SQLException, NamingException {
	//	String reta = null;
	//	String phoneNumber = params.getString("phoneNumber");
		//生成6位数字的随机字符串
		int suiji = new Random().nextInt(899999)+100000;
		String backStr = Integer.toString(suiji);
		System.out.println(backStr);
		JSONObject jObject = new JSONObject();
		jObject.put("CheckCode", backStr);
/*    	String postData = "account=test01&psw=test01&phonestr="+phoneNumber+"&content=验证码："+backStr+"(本信息由系统自动发出，不要回复）";
		String dxUrl = "http://10.214.90.23:1118/sendsms.aspx"; 
    	reta = Send.SMS(postData,dxUrl); */
    	return jObject;
	}
}

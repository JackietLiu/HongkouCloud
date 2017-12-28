package org;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class Login {
	private static final String DATASOURCE_X5SYS= "system";
	private static final String tokenUrl = "http://localhost:9090/v1/tokens";
	private static final String tokenPassWord = "justep-dangchat";
	public static JSONObject login(JSONObject params, ActionContext context) throws SQLException, NamingException {
		String userName = params.getString("userName");
		String password = params.getString("password");
		//System.out.println("username="+userName+"password="+password);
		Boolean flag = false;
		String personID = null;
		String personName = null;
		String message = null;
		String sfunRole = "";
		Boolean isInOrg = false;
		JSONObject ret = new JSONObject();
		JSONObject p = new JSONObject();
		if(userName == null){
			ret.put("flag", flag);
			message = "登录名不能为空";
			ret.put("message", message);
		}else{			
			p.put("db", DATASOURCE_X5SYS);
			p.put("tableName", "sa_opperson");
			p.put("limit", -1);
			p.put("columns", "sID,sName,sFunRole");
			p.put("condition", "SLOGINNAME = :userName AND SPASSWORD = :password");
			JSONObject variables = new JSONObject();
			p.put("variables", variables);
			variables.put("userName", userName);
			variables.put("password", password);
			JSONObject t = com.justep.baas.action.CRUD.query(p, context);
			JSONArray rows = t.getJSONArray("rows");
			if (rows.size() > 0) {
				flag = true;
				JSONObject row = rows.getJSONObject(0);
				personID = row.getJSONObject("sID").getString("value");
				personName = row.getJSONObject("sName").getString("value");
				sfunRole = row.getJSONObject("sFunRole").getString("value");
				String token = tokenUrl+"/"+personID;
				String tokenParam = "apiPassword="+tokenPassWord;
				String tokenRet = sendGet(token,tokenParam);
				ret.put("token",tokenRet);
				ret.put("flag", flag);
				ret.put("personName", personName);
				ret.put("personID", personID);
				ret.put("message", message);
				ret.put("CurrentFunRole", sfunRole);
				
				JSONArray rowsOrg =  orgInfo(personID, context);
				if(rowsOrg.size()>0){
					isInOrg = true;
					JSONObject org = rowsOrg.getJSONObject(0);
					String strFID = org.getJSONObject("sFID")==null?"":org.getJSONObject("sFID").getString("value");
					String strFName = org.getJSONObject("sFName")==null?"":org.getJSONObject("sFName").getString("value");
					String strIDs[] = strFID.substring(1).split("/");
					String strNames[] = strFName.substring(1).split("/");
					
					ret.put("CurrentOgnID", strIDs[0].substring(0,strIDs[0].indexOf(".")));
					ret.put("CurrentOgnName", strNames[0]);
					ret.put("CurrentDeptID", strIDs[1].substring(0,strIDs[1].indexOf(".")));
					ret.put("CurrentDeptName", strNames[1]);
					ret.put("CurrentFID", strFID);
					ret.put("CurrentFName", strFName);
				}else{
					isInOrg = false;
					ret.put("CurrentOgnID", "");
					ret.put("CurrentOgnName", "");
					ret.put("CurrentDeptID", "");
					ret.put("CurrentDeptName", "");
					ret.put("CurrentFID", "");
					ret.put("CurrentFName", "");
				}
				
				ret.put("isInOrg", isInOrg);
				
			}else{
				ret.put("flag", flag);
				message = "登录名或密码错误";
				ret.put("message", message);
			}
		}
		return ret;
	}	    /**	 * 发送get请求	 * 获取token	 */
    public static String sendGet(String url, String param) {        String result = "";        BufferedReader in = null;        try {            String urlNameString = url + "?" + param;
            System.out.println(urlNameString);            URL realUrl = new URL(urlNameString);            // 打开和URL之间的连接            URLConnection connection = realUrl.openConnection();            // 设置通用的请求属性            connection.setRequestProperty("accept", "*/*");            connection.setRequestProperty("connection", "Keep-Alive");            connection.setRequestProperty("user-agent",                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");            // 建立实际的连接            connection.connect();            // 获取所有响应头字段            Map<String, List<String>> map = connection.getHeaderFields();            // 遍历所有的响应头字段            for (String key : map.keySet()) {                System.out.println(key + "--->" + map.get(key));            }            // 定义 BufferedReader输入流来读取URL的响应            in = new BufferedReader(new InputStreamReader(                    connection.getInputStream()));            String line;            while ((line = in.readLine()) != null) {                result += line;            }        } catch (Exception e) {            System.out.println("发送GET请求出现异常！" + e);            e.printStackTrace();        }        // 使用finally块来关闭输入流        finally {            try {                if (in != null) {                    in.close();                }            } catch (Exception e2) {                e2.printStackTrace();            }        }        return result;    }
	private static JSONArray orgInfo(String personID, ActionContext context) throws SQLException, NamingException {
		JSONObject p = new JSONObject();
		p.put("db", DATASOURCE_X5SYS);
		p.put("tableName", "sa_oporg");
		p.put("limit", -1);
		p.put("columns", "sFName,sFID");
		p.put("condition", "SPERSONID = :personID");
		p.put("orderBy", "sName asc");
		JSONObject variables = new JSONObject();
		p.put("variables", variables);
		variables.put("personID", personID);
		JSONObject t = com.justep.baas.action.CRUD.query(p, context);
		//System.out.println("t="+t);
		JSONArray rows = t.getJSONArray("rows");

		return rows;
	}
}

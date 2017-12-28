package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class Release {
	public static JSONObject getAllPersonID(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject json = new JSONObject();

		String rowID = params.getString("rowID");
		Connection conn = context.getConnection("system");

		String personID = "";
		String result = update(rowID, conn, personID);

		json.put("data", result);

		return json;
	}

	public static String update(String id, Connection conn, String personID) {
		String sql = "select sID,sPersonID,sOrgKindID from sa_oporg where sParent = '" + id + "'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			if (info.getString("sOrgKindID").equals("psm")) {
				personID += (info.getString("sPersonID") + ",");
			} else {
				personID = update(info.getString("sID"), conn, personID);
			}
		}
		return personID;
	}
	private static final String DATASOURCE_ACTIVITY = "work";
	
	/*
	 * params
	 * 活动ID
	 * */
	public static JSONObject countHum(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_ACTIVITY);
		JSONArray result = new JSONArray();
		String fID = params.getString("fID");
		String sql = "select * from wk_activity_detail where fParentsID = '"+fID+"'" ;
		
		int PerNum = 0;
		String PerID = "";
		String PerName = "";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		int i = 1;
		while (iterator.hasNext()) {
			
			Row info = iterator.next();
			
			PerNum += info.getInteger("fNumber");
			PerID += info.getString("fPersonID") + " ";
			PerName += info.getString("fPersonName")+" ";
			i++;
		}
		JSONObject json = new JSONObject();
		json.put("PerNum", PerNum);
		json.put("PerID", PerID);
		json.put("PerName", PerName);
		result.add(json);
		
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	
	private static final String DATASOURCE_X5SYS = "work";
	//给投票内容做加1运算
	public static JSONObject getSum(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		String id = params.getString("id");
		int inputValue = params.getIntValue("inputValue");
		int fSingUp = params.getIntValue("fSingUp");
		
		int  count = inputValue + fSingUp;
				
				
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		Statement stmt = null;
		String sql = "update wk_activity_start set fSignUp = '"+count+"' WHERE fID  = '"+id+"'";
		
		stmt = conn.createStatement();
		int i = stmt.executeUpdate(sql);
		if (i > 0) {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} else {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
		return result;
	
	}
	
	
}

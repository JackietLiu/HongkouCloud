package org;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class UpdatePersonUid {
	private static final String DATASOURCE_X5SYS = "system";

	public static JSONObject updatePersonUid(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		boolean updateState = true;
		Statement stmt = null;
		JSONObject ret = new JSONObject();
		if (params.containsKey("persons")) {
			JSONArray persons = params.getJSONArray("persons");
			for (int i = 0; i < persons.size(); i++) {
				JSONObject rows = persons.getJSONObject(i);
				updateState = updateState && updatePersonNum(conn, stmt, (Integer) rows.get("id"), (String) rows.get("outId"));
			}
		} else {
			String pid = params.getString("pid");
			Integer uid = params.getInteger("uid");
			updateState = updatePersonNum(conn, stmt, uid, pid);
		}
		if (updateState) {
			ret.put("state", true);
		} else {
			ret.put("state", false);
		}

		return ret;
	}

	public static boolean updatePersonNum(Connection conn, Statement stmt, Integer uid, String pid) throws SQLException {
		String sql = "update sa_opperson set sNumb=" + uid + " where sID= '" + pid + "'";
		stmt = conn.createStatement();
		int i = stmt.executeUpdate(sql);
		if(stmt!=null)
			stmt.close();
		return i > 0;
	}
}

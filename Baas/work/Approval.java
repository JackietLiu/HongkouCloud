package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class Approval {
	private static final String DATASOURCE_APPROVAL = "work";
	
	public static JSONObject getApproversID(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject json = new JSONObject();
		String fID = params.getString("fID");
		
		Connection conn = context.getConnection(DATASOURCE_APPROVAL);
		String sql = "select fCCPersonID,fApproversID from oa_approvers where fApprovalID = '"+fID+"' and fApproval <> '提交申请'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		
		String ApproversID = "";
		
		while(iterator.hasNext()){
			Row info = iterator.next();
			ApproversID +=(info.getString("fApproversID")+","+info.getString("fCCPersonID")+",");
		}
		json.put("data", ApproversID);
		
		return json;
	}
	
	public static JSONObject getImageSrc(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject json = new JSONObject();
		String sID = params.getString("sID");
		Connection conn = context.getConnection("system");
		String sql = "select sPhoto from sa_opperson where sID = '"+sID+"'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		if(iterator.hasNext()){
			json.put("src", iterator.next().getString("sPhoto"));
		}else{
			json.put("src", false);
		}
		
		return json;
	}
	
	public static JSONObject getApproversPersonIDs(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject json = new JSONObject();
		String fID = params.getString("fID");
		
		Connection conn = context.getConnection(DATASOURCE_APPROVAL);
		String sql = "select distinct fApproversID from oa_approvers where fApprovalID = '"+fID+"'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		
		String ApproversID = "";
		
		while(iterator.hasNext()){
			Row info = iterator.next();
			ApproversID +=(info.getString("fApproversID")+",");
		}
		json.put("data", ApproversID.substring(0, ApproversID.length()-1));
		
		return json;
	}
}

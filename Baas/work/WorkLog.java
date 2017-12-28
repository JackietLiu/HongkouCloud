package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class WorkLog {
	private static final String DATASOURCE_WORKLOG = "work";
	
	/** 
	 * 查询工作日报
	 * 需传入
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkDailyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");

		String ksql = "select distinct OA_WorkDaily.* \n" +
					 "   from OA_WorkDaily \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScopeID, '"+fPersonID+"') >= 1 ) \n" +
					 "   order by fCreateTime desc";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		Table table = DataUtils.queryData(conn, ksql, null,null,null,null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			JSONObject json  = new JSONObject();
			Row info = iterator.next();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
	
	/**
	 * 查询工作周报
	 * 需传入参数
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkWeeklyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");
		
		String ksql = "select distinct OA_WorkWeekly.* \n" +
					 "   from OA_WorkWeekly \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fPersonID+"') >= 1) \n" +
					 "   order by fCreateTime desc";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
		Table table =  DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			JSONObject json  = new JSONObject();
			Row info = iterator.next();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkSummary",info.getString("fWorkSummary"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo  = new JSONObject();
		jo.put("rows", result);
		return jo;
	}
	
	/**
	 * 查询工作月报
	 * 需传入参数
	 * 1.fPersonID
	 * */
	public static JSONObject queryOA_WorkmonthlyScope(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORKLOG);
		JSONArray result = new JSONArray();
		
		String fPersonID = params.getString("fPersonID");
		
		String ksql = "select distinct OA_Workmonthly.* \n" +
					 "   from OA_Workmonthly \n" +
					 "   where (fPersonID = '"+fPersonID+"' OR instr(fReleaseScope, '"+fPersonID+"') >= 1 )\n" +
					 "   order by fCreateTime desc";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Table table =  DataUtils.queryData(conn, ksql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while(iterator.hasNext()) {
			Row info = iterator.next();
			JSONObject json = new JSONObject();
			json.put("fID",info.getString("fID"));
			json.put("fPersonName",info.getString("fPersonName"));
			json.put("fCreateTime",sdf.format(info.getDateTime("fCreateTime")));
			json.put("fFinishWork",info.getString("fFinishWork"));
			json.put("fWorkSummary",info.getString("fWorkSummary"));
			json.put("fWorkPlan",info.getString("fWorkPlan"));
			json.put("fNeedHelp",info.getString("fNeedHelp"));
			json.put("fRemark",info.getString("fRemark"));
			json.put("fImgURL",info.getString("fImgURL"));
			result.add(json);
		}
		JSONObject jo = new JSONObject();
		jo.put("rows", result);
		conn.close();
		return jo;
	}
}

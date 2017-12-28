package work;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;

public class Bot {
	private static final String DATASOURCE_WORK = "work";
	
	public static JSONObject createBot(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORK);
		PreparedStatement ps=null;
		JSONObject ret = new JSONObject();
		boolean flag = false;
		String sID = params.getString("uuid");
		String sName = params.getString("name");
		String sNickName = params.getString("nickName");
		long sActorID = params.getLong("uid");
		String sType = params.getString("type");
		String sStatus = "启用";
		String sRemarks = "名称："+sName+"，昵称："+sNickName+"，类型：";
		
		String checkSql = "select sName from im_bot where sName = '"+sName+"'";
		Table table = DataUtils.queryData(conn, checkSql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		if(! iterator.hasNext()){
			String sql = "insert into im_bot (sID,sName,sNickName,sActorID,sType,sStatus,sRemarks) VALUES(?,?,?,?,?,?,?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, sID);
			ps.setString(2, sName);
			ps.setString(3, sNickName);
			ps.setLong(4, sActorID);
			ps.setString(5, sType);
			ps.setString(6, sStatus);
			ps.setString(7, sRemarks);
			try{
				ps.executeUpdate();
				flag = true;
			}catch(SQLException e){
				flag = false;
			} finally {
				if (null != ps) {
					ps.close();
				}
				if (null != conn) {
					if (!conn.isClosed()) {
						context.closeConnection();
					}
				}
			}
		}else{
			flag = true;
		}
		ret.put("flag", flag);
		return ret;
	}
	
	public static JSONObject queryBotObject(JSONObject params, ActionContext context) throws SQLException, NamingException {
		String botName = params.getString("botName");
		JSONObject botObj = new JSONObject();
		JSONObject p = new JSONObject();
		p.put("db", DATASOURCE_WORK);
		p.put("tableName", "im_bot");
		p.put("limit", -1);
		p.put("columns", "sName,sNickName,sActorID");
		p.put("condition", "sName = :botName");
		JSONObject variables = new JSONObject();
		p.put("variables", variables);
		variables.put("botName", botName);
		JSONObject t = com.justep.baas.action.CRUD.query(p, context);
		JSONArray rows = t.getJSONArray("rows");
		if(rows.size()>0){
			JSONObject row = rows.getJSONObject(0);
			String id = row.getJSONObject("sName")==null?"":row.getJSONObject("sName").getString("value");
			long uid = row.getJSONObject("sActorID")==null ? 0 : row.getJSONObject("sActorID").getLong("value");
			botObj.put("id", id);
			botObj.put("uid", uid);
			botObj.put("flag", true);
		}else{
			botObj.put("flag", false);
			System.out.println("The bot “"+botName+"” does not exist! Please first create a name for “"+botName+"” bot!");
		}
		return botObj;
	}
	
	
	public static JSONObject createGroupByBot(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_WORK);
		PreparedStatement ps=null;
		JSONObject ret = new JSONObject();
		boolean flag = false;
		String sID = params.getString("uuid");
		String groupName = params.getString("groupName");
		String busnessID = params.getString("busnessID");
		long groupID = params.getLong("groupID");
		String busnessType = params.getString("busnessType");
		String groupMsgURL = params.getString("groupMsgURL");
		String sStatus = "启用";
		String sGroupDescribe = groupName;
		
		String checkSql = "select sGroupName from im_botgroup where sGroupName = '"+groupName+"'";
		Table table = DataUtils.queryData(conn, checkSql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		if(! iterator.hasNext()){
			String sql = "insert into im_botgroup (sID,sGroupID,sBusinessID,sBusinessType,sGroupName,sGroupMsgURL,sGroupDescribe,sStatus) VALUES(?,?,?,?,?,?,?,?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, sID);
			ps.setLong(2, groupID);
			ps.setString(3, busnessID);
			ps.setString(4, busnessType);
			ps.setString(5, groupName);
			ps.setString(6, groupMsgURL);
			ps.setString(7, sGroupDescribe);
			ps.setString(8, sStatus);
			try{
				ps.executeUpdate();
				flag = true;
			}catch(SQLException e){
				flag = false;
			} finally {
				if (null != ps) {
					ps.close();
				}
				if (null != conn) {
					if (!conn.isClosed()) {
						context.closeConnection();
					}
				}
			}
		}else{
			flag = true;
		}
		ret.put("flag", flag);
		return ret;
	}
	
	public static JSONObject queryBotGroup(JSONObject params, ActionContext context) throws SQLException, NamingException {
		String sBusinessID = params.getString("sBusinessID");
		JSONObject botObj = new JSONObject();
		JSONObject p = new JSONObject();
		p.put("db", DATASOURCE_WORK);
		p.put("tableName", "im_botgroup");
		p.put("limit", -1);
		p.put("columns", "sGroupID");
		p.put("condition", "sBusinessID = :sBusinessID");
		JSONObject variables = new JSONObject();
		p.put("variables", variables);
		variables.put("sBusinessID", sBusinessID);
		JSONObject t = com.justep.baas.action.CRUD.query(p, context);
		JSONArray rows = t.getJSONArray("rows");
		if(rows.size()>0){
			JSONObject row = rows.getJSONObject(0);
			String id = row.getJSONObject("sGroupID")==null?"":row.getJSONObject("sGroupID").getString("value");
			botObj.put("groupID", id);
			botObj.put("flag", true);
		}else{
			botObj.put("flag", false);
			System.out.println("The botGroup for “"+sBusinessID+"” does not exist!");
		}
		return botObj;
	}
	
}

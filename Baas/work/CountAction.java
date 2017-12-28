package work;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Row;
import com.justep.baas.data.Table;

public class CountAction {
	private static final String DATASOURCE_X5SYS = "work";
	//给投票内容做加1运算
	public static JSONObject countAction(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		String fContent = params.getString("fcontent");
		String actionId = params.getString("fActionId");
		int votecCount = params.getIntValue("fCount");
		int count = ++votecCount;
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		Statement stmt = null;
		String sql = "update wk_vote_content set fVoteCount = '"+count+"'  WHERE fStartId  = '"+actionId+"' and fContent = '"+fContent+"'";
		
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
	//给投票内容做减1运算
	public static JSONObject suntAction(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		String fContent = params.getString("fcontent");
		String actionId = params.getString("fActionId");
		int fVoteCount = params.getIntValue("fCount");
		int count = --fVoteCount;
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		Statement stmt = null;
		String sql = "update wk_vote_content set fVoteCount = '"+count+"'  WHERE fStartId  = '"+actionId+"' and fContent = '"+fContent+"'";
		
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
	
	
	//统计总投票数
	public static JSONObject getSumCount(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		//获取参数
		String actionId = params.getString("fID");//服务中的参数名称
//		String personId = params.getString("personId");
		int SumCount = params.getIntValue("fSumCount");
		//进行统计，修改数据
		int sum = ++SumCount;
		 //创建连接
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		//声明会话
		Statement stmt = null;
		//修改数据的sql语句
		String sql = "update wk_vote_start set fCount = '"+sum+"'  WHERE fID  = '"+actionId+"'";
		
		stmt = conn.createStatement();
		//执行语句，查看结果
		int i = stmt.executeUpdate(sql);
		//进行判断
		if(i>0){
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}else{
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		//返回结果集
		return result;
	}
	//统计投票总数
	public static JSONObject getTypeSumCount(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		//获取参数
		String actionId = params.getString("actionId");//服务中的参数名称
//		String personId = params.getString("personId");
		int SumCount = params.getIntValue("fSumCount");
		//进行统计，修改数据
		int sum = ++SumCount;
		 //创建连接
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		//声明会话
		Statement stmt = null;
		//修改数据的sql语句
		String sql = "update wk_vote_type set fCount = '"+sum+"'  WHERE fStartId  = '"+actionId+"'";
		
		stmt = conn.createStatement();
		//执行语句，查看结果
		int i = stmt.executeUpdate(sql);
		//进行判断
		if(i>0){
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}else{
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		//返回结果集
		return result;
	}
	//修改状态方法；
	public static JSONObject getState(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		//获取参数
		String actionId = params.getString("fStartId");//服务中的参数名称
		String personId = params.getString("personId");
		 //创建连接
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		//声明会话
		Statement stmt = null;
		//修改数据的sql语句
		String sql = "update wk_vote_type set fType = '已投票'  WHERE fStartId  = '"+actionId+"' and fPersonId = '"+personId+"'";
		
		stmt = conn.createStatement();
		//执行语句，查看结果
		int i = stmt.executeUpdate(sql);
		//进行判断
		if(i>0){
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}else{
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		//返回结果集
		return result;
	}
	
	//活动时间超时状态修改
	public static JSONObject getEndState(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		//获取参数
		String actionId = params.getString("fStartId");//服务中的参数名称
		String personId = params.getString("personId");
		 //创建连接
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		//声明会话
		Statement stmt = null;
		//修改数据的sql语句
		String sql = "update wk_vote_type set fType = '已结束'  WHERE fStartId  = '"+actionId+"' and fPersonId = '"+personId+"'";
		
		stmt = conn.createStatement();
		//执行语句，查看结果
		int i = stmt.executeUpdate(sql);
		//进行判断
		if(i>0){
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}else{
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
		//返回结果集
		return result;
	}
	
	
	
	
	//投票详情表进行加减数据
	public static JSONObject addDetaileCountAction(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		String fContent = params.getString("fcontent");
		String actionId = params.getString("fActionId");
		int votecCount = params.getIntValue("fCount");
		int count = ++votecCount;
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		Statement stmt = null;
		String sql = "update wk_vote_detail set fVoteCount = '"+count+"'  WHERE fStartId  = '"+actionId+"' and fContent = '"+fContent+"'";
		
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
	//给投票内容做减1运算
	public static JSONObject sunDetaileCountAction(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject result = new JSONObject();
		String fContent = params.getString("fcontent");
		String actionId = params.getString("fActionId");
		int fVoteCount = params.getIntValue("fCount");
		int count = --fVoteCount;
		Connection conn = context.getConnection(DATASOURCE_X5SYS);
		Statement stmt = null;
		String sql = "update wk_vote_content set fVoteCount = '"+count+"'  WHERE fStartId  = '"+actionId+"' and fContent = '"+fContent+"'";
		
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
	
	
	public static JSONObject getAllPersonID(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject json = new JSONObject();
		
		String rowFID = params.getString("rowFID");
		Connection conn = context.getConnection("system");
		
		String personID = "";
		String result = update(rowFID,conn,personID);
		
		json.put("data", result);
		
		return json;
	}
	
	
	public static String update(String fid,Connection conn,String personID){
		String sql = "select distinct sPersonID from sa_oporg where sFID like '"+fid+"%' and sOrgKindID='psm'";
		Table table = DataUtils.queryData(conn, sql, null, null, null, null);
		Iterator<Row> iterator = table.getRows().iterator();
		while (iterator.hasNext()) {
			Row info = iterator.next();
			if(! personID.equals("")){
				personID = personID+","+info.getString("sPersonID");
			}else{
				personID = info.getString("sPersonID");
			}
		}
		return personID;
	}
	
	
	
	
}

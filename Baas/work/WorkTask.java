package work;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;

public class WorkTask {
	private static final String DATASOURCE_SIGN = "system";

	public static JSONObject queryComplete(JSONObject params, ActionContext context) throws SQLException, NamingException {
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		String sID = params.getString("sID");
		JSONObject ret = new JSONObject();
		String sql = "select count(1) as countComplete from sa_task s where s.sparentid = '" + sID + "' and s.sStatusName = '未完成'";
		Object table = DataUtils.getValueBySQL(conn, sql, null);
		int i = Integer.parseInt(table.toString());
		if (i > 0) {
			ret.put("flag", false);
		} else {
			ret.put("flag", true);
		}
		return ret;
	}
	
	public static JSONObject deleteTask(JSONObject params, ActionContext context) throws SQLException, NamingException {
		JSONObject ret = new JSONObject();
		StringBuilder builder = new StringBuilder();
		String str = params.getString("key");
		String[] s = str.split(",");
		for(int i = 0;i<s.length;i++){
			if(builder.length() == 0){
				builder.append("'" + s[i] + "'");
			} else {
				builder.append(",'" + s[i]+ "'");
			}
		}
	    if (builder.length() == 0 ) {
	    	ret.put("flag", false);
	    	return ret;
	    }
		Connection conn = context.getConnection(DATASOURCE_SIGN);
		conn.setAutoCommit(false);
        
     	 
        // 更新一个字段
		String mainSql = "delete from sa_task where sid in (" + builder.toString() + ")";
		String subSql = "delete from sa_task where sparentId in (" + builder.toString() + ")";
			
		PreparedStatement pstmt = null;
		
		pstmt= conn.prepareStatement(mainSql); 	
        pstmt.execute();
        
        pstmt = conn.prepareStatement(subSql);
        pstmt.execute();
        conn.commit();
        
        conn.setAutoCommit(false);
		pstmt.close();
		conn.close();
		
		ret.put("flag", true);
		return ret;
	}
}

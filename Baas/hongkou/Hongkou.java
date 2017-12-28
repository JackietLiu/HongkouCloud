package hongkou;



import javax.naming.NamingException;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;
import com.justep.baas.data.Table;
import com.justep.baas.data.Transform;

import java.sql.*;


public class Hongkou {
	private static final String DATASOURCE_HONGKOU = "hongkou";
	/**
	 * 登录
	 * 
	 * */
	public static JSONObject login(JSONObject params, ActionContext context) throws Exception {	
		String name = params.getString("name");
		String psd = params.getString("password");								
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			//无论输入的是工号还是用户名，都获取其ID
			String queryid = "SELECT id FROM t_s_base_user where id='"+name+"' or username='"+name+"'";
			String id = DataUtils.getValueBySQL(conn, queryid,null).toString();
			//通过md5盐值加密(id+password生成新的password)
			byte[] salt = PasswordUtil.getStaticSalt();
			String password = PasswordUtil.encrypt(id, psd, salt);
			System.out.println(password);
			try{
				//使用加密后的密码和数据库的密码对比
				String sql = "SELECT count(id) FROM t_s_base_user  where id ='"+name+"' and password='"+password+"' or username='"+name+"' and password='"+password+"'";
				//System.out.println(sql);
				int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());					
				//count 如果大于0，则存在用户。进行下一步密码验证
				//System.out.println(count);
				if(count>0){								 
					//登录成功
					String sql1 = "SELECT * FROM t_s_base_user where id='"+name+"'or username='"+name+"' and password='"+password+"'";
					System.out.println(sql1);
					Table table = DataUtils.queryData(conn, sql1, null, null, null, null);
					JSONObject user = Transform.tableToJson(table);
					//System.out.println(user.get("rows"));
					ret.put("user", user.get("rows"));
					ret.put("state","1");
				}else {
					//登录失败
					ret.put("state","0");
				}   				
			} finally {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(ret.get("state"));
		return ret;
		//System.out.println(phoneNumber+password);



	}

	/**
	 * 修改密码
	 * 
	 * */
	public static JSONObject updata(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	

		String name = params.getString("name");
		String pwd = params.getString("password");	
		String newpass = params.getString("newpass");				
		JSONObject ret = new JSONObject();
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		//无论输入的是工号还是用户名，都获取其id
		String queryid = "SELECT id FROM t_s_base_user where id='"+name+"' or username='"+name+"'";
		String id = DataUtils.getValueBySQL(conn, queryid,null).toString();
		//通过md5盐值加密(id+password生成新的password)
		byte[] salt = PasswordUtil.getStaticSalt();
		String password = PasswordUtil.encrypt(id, pwd, salt);
		String newpassword = PasswordUtil.encrypt(id, newpass, salt);
		System.out.println(password);
		System.out.println(newpassword);


		try{

			String sql = "SELECT count(id) FROM t_s_base_user  where id ='"+name+"' and password='"+password+"' or username='"+name+"' and password='"+password+"'";
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());					
			if(count>0){								                 
				String sql1 = "UPDATE t_s_base_user SET password='"+newpassword+"' WHERE id ='"+name+"' or username='"+name+"'";				
				Statement stat = conn.createStatement();				
				int rs = stat.executeUpdate(sql1);				
				if (rs == 0) {						
					ret.put("state", "0");	//密码修改失败				
				}else {
					ret.put("state", "1");	//密码修改成功
				}		
			} 
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return ret;

	}

	/**
	 * 修改邮箱信息
	 * 
	 * */
	public static JSONObject newMessage(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	
		String email = params.getString("email");
		String emailPass = params.getString("emailPass");	
		String id = params.getString("id");
		JSONObject ret = new JSONObject();
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		try {							                 
			String sql1 = "UPDATE t_s_base_user SET emailuser = '"+email+"',emailpass='"+emailPass+"'  WHERE id = '"+id+"' or username='"+id+"'";				
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql1);				
			if (rs == 0) {						
				ret.put("state", "0");	//修改邮箱失败				
			}else {
				ret.put("state", "1");	//修改邮箱成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				

		return ret;

	}
	/**
	 * 查询邮箱绑定状态
	 * 
	 * */
	public static JSONObject queryEmailState(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	
		String id = params.getString("id");
		JSONObject ret = new JSONObject();
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		try {							                 
			String sql1= "SELECT emailuser FROM t_s_base_user  where id ='"+id+"' or username='"+id+"'";		
			String  emailUser = DataUtils.getValueBySQL(conn, sql1, null).toString();	
			if (emailUser.equals("")) {
				ret.put("state", "0");
			}else {
				ret.put("state", "1");
				
				System.out.println("emailUser:"+emailUser);
				ret.put("emailUser",emailUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}				

		return ret;

	}
	
	/**
	 * 修改头像信息
	 * 
	 * */
	public static JSONObject updateHeaderImg(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String id = params.getString("id");
		String url = params.getString("url");
		//System.out.println(id+"-->url="+url);
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql1 = "UPDATE t_s_base_user SET headerimg = '"+ url +"'  WHERE id = '"+ id +"' or username='"+ id +"'";				
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql1);				
			if (rs == 0) {						
				ret.put("state", "0");	//修改头像失败				
			}else {
				ret.put("state", "1");	//修改头像成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
	/**
	 * 应用列表
	 * 
	 * */
	public static JSONObject appsList(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String userid = params.getString("userid");	
		System.out.println(userid);
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		//获取当前登录人当前权限下所包含或者能使用的APP
		try{
			String sql = "SELECT count(*) FROM application WHERE type='01' AND app_status='审核' AND id IN (SELECT application_id FROM t_b_group_application WHERE group_id IN (SELECT group_id FROM t_b_group_user WHERE user_id='"+userid+"'))  ORDER BY applicationname";	
			JSONObject ret = new JSONObject();
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());		
			//count 大于0则返回json
			if(count > 0){								 
				String sql1 = "SELECT * FROM application WHERE type='01' AND app_status='审核' AND id IN (SELECT application_id FROM t_b_group_application WHERE group_id IN (SELECT group_id FROM t_b_group_user WHERE user_id='"+userid+"'))  ORDER BY applicationname";	
				Table table = DataUtils.queryData(conn, sql1, null, null, null, null);				
				JSONObject apps = Transform.tableToJson(table);
				//System.out.println(apps.get("rows"));
				//向前端返回值
				ret.put("apps", apps.get("rows"));
				ret.put("state","1");
			}else {
				//count 等于0 ,则为该用户暂无可使用的APP
				ret.put("state","0");
			}
			return ret;	
		} finally {
			conn.close();
		}

	}
	/**
	 * app评论或者专题的评论
	 * 
	 * */
	public static JSONObject newComment(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	

		String pContent = params.getString("pContent");
		String pName = params.getString("pName");
		String pImage = params.getString("pImage");
		String dID = params.getString("dID");
		String pID = params.getString("pID");
		String createTime = params.getString("pDate");
		String type = params.getString("type");
		String sid = params.getString("sid");
		//System.out.println(pID);
		JSONObject ret = new JSONObject();
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		try {
			String sql = "INSERT INTO comment(pid,did,pcontent,pname,pdate,pimage,type,sid) VALUES('"+pID+"','"+dID+"','"+pContent+"','"+pName+"','"+createTime+"','"+pImage+"','"+type+"','"+sid+"')";
			System.out.println(sql);
			Statement stmt = null;
			stmt = conn.createStatement();
			stmt.execute(sql);		
			ret.put("state", "1");
		} catch (Exception e) {
			e.printStackTrace();
		}				

		return ret;
	}
	/**
	 * 查询评论数
	 * 
	 * */
	public static JSONObject countOfComment(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String id = params.getString("id");      
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql = "select count(*) from comment where did = '"+ id+"'";	
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());		
			ret.put("count", count);				 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
	/**
	 * 查询手势
	 * 
	 * */
	public static JSONObject queryLocker(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String id = params.getString("id");      
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql = "select locker from t_s_base_user where id = '"+ id +"' or username='"+ id +"'";	
			String locker = DataUtils.getValueBySQL(conn, sql, null).toString();		
			System.out.println(locker);			
			if (locker.equals("0")) {						
				ret.put("locker", "0");	//值为0即为不存在手势密码				
			}else {
				ret.put("locker", locker);	//增加手势成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
	/**
	 * 增加手势
	 * 
	 * */
	public static JSONObject addLocker(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String id = params.getString("id");
		String locker = params.getString("locker").replace("[", "").replace("]", "");

		System.out.println(locker);
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql1 = "UPDATE t_s_base_user SET locker='"+ locker +"'  WHERE id = '"+ id +"' or username='"+ id +"'";				
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql1);				
			if (rs == 0) {						
				ret.put("state", "0");	//增加手势失败				
			}else {
				ret.put("state", "1");	//增加手势成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
	/**
	 * 删除手势
	 * 
	 * */
	public static JSONObject delLocker(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String id = params.getString("id");
		//System.out.println(id+"-->url="+url);
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql1 = "UPDATE t_s_base_user SET locker='0'  WHERE id = '"+ id +"' or username='"+ id +"'";				
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql1);				
			if (rs == 0) {						
				ret.put("state", "0");	//删除手势失败				
			}else {
				ret.put("state", "1");	//删除手势成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}

	/**
	 *  收藏
	 * 
	 * */
	public static JSONObject newCollect(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	

		String content = params.getString("content");
		String title = params.getString("title");
		String id = params.getString("id");
		String comefrom = params.getString("comefrom");
		String createtime = params.getString("createtime");
		String collectid = params.getString("collectid");
		String contentid = params.getString("contentid");
		//String image = params.getString("image");
		//System.out.println(pID);
		JSONObject ret = new JSONObject();
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		try {
			String countsql = "SELECT count(*) FROM collection  where contentid ='"+contentid+"' and collectid='"+collectid+"'";
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, countsql, null).toString());					
			if(count==0){	
				String sql = "INSERT INTO collection(id,title,content,comefrom,createtime,collectid,contentid) VALUES('"+id+"','"+title+"','"+content+"','"+comefrom+"','"+createtime+"','"+collectid+"','"+contentid+"')";
				System.out.println(sql);
				Statement stmt = null;
				stmt = conn.createStatement();
				stmt.execute(sql);		
				ret.put("state", "1");
			}else {
				String sql = "UPDATE collection SET createtime='"+createtime+"' WHERE contentid='"+contentid+"' and collectid='"+collectid+"'";
				System.out.println(sql);
				Statement stat = conn.createStatement();				
				int rs = stat.executeUpdate(sql);				
				if (rs == 0) {						
					ret.put("state", "0");			
				}else {
					ret.put("state", "1");	
				}					 	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}				

		return ret;
	}
	
	/**
	 * 删除收藏
	 * 
	 * */
	public static JSONObject delCollect(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		String collectid = params.getString("collectid");
		String contentid = params.getString("contentid");
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
			String sql = "DELETE FROM collection WHERE contentid='"+contentid+"' and collectid='"+collectid+"'";		
			System.out.println(sql);
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql);		
			
			if (rs == 0) {						
				ret.put("state", "0");	//删除失败				
			}else {
				ret.put("state", "1");	//删除成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
	/**
	 * 删除收藏
	 * 
	 * */
	public static JSONObject mutilDelCollect(JSONObject params, ActionContext context) throws SQLException, 
	NamingException {	       			
		//String collectid = params.getString("collectid");
		Object ids = params.get("ids");
		
		System.out.println(ids.toString().replace("[", "").replace("]", ""));
		Connection conn = context.getConnection(DATASOURCE_HONGKOU);
		JSONObject ret = new JSONObject();
		try {
		    String sql = "DELETE FROM collection WHERE id in("+ids.toString().replace("[", "").replace("]", "")+")";		
			System.out.println(sql);
			Statement stat = conn.createStatement();				
			int rs = stat.executeUpdate(sql);	
			
			if (rs == 0) {						
				ret.put("state", "0");	//删除失败				
			}else {
				ret.put("state", "1");	//删除成功
			}					 
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return ret;
	}
}





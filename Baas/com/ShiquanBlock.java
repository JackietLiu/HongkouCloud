package com;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;

public class ShiquanBlock {
	private static final String DATASOURCE_BLOCKCLOUD = "blockcloud";
	//private static final String address = null;

	public static JSONObject login(JSONObject params, ActionContext context) throws SQLException, 

	NamingException {	


		String phoneNumber = params.getString("phoneNumber");
		String password = params.getString("passWord");								
		Connection conn = context.getConnection(DATASOURCE_BLOCKCLOUD);

		try{
			String sql = "SELECT count(uID) FROM users where phoneNumber='"+phoneNumber+"' and passWord='"+password+"'";
			JSONObject ret = new JSONObject();
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());		
			if(count>0){	
				String sql1 = "SELECT uID FROM users where phoneNumber='"+phoneNumber+"' and passWord='"+password+"'";
				String id = DataUtils.getValueBySQL(conn, sql1, null).toString();
				//System.out.println(sql1);
				//System.out.println(id);
				ret.put("id",id);
				ret.put("state","1");	
			}else {
				ret.put("state","0");
			}

			return ret;	
		} finally {
			conn.close();
		}


	}



	public static JSONObject updata(JSONObject params, ActionContext context) throws SQLException, 

	NamingException {	


		String phoneNumber = params.getString("phoneNumber");
		String password1 = params.getString("password1");
		String password2 = params.getString("password2");
		String password3 = params.getString("password3");
		Connection conn = context.getConnection(DATASOURCE_BLOCKCLOUD);
		// System.out.println("pn="+phoneNumber+"pwd="+password1+"");
		try{
			//String sql = "SELECT * FROM users where phoneNumber='"+phoneNumber+"' and passWord='"+password+"'";
			String sql = "SELECT count(uID) FROM users where phoneNumber='"+phoneNumber+"' and passWord='"+password1+"'";

			JSONObject ret = new JSONObject();
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());		
			//System.out.println(count);
			if(count>0){								 
				if(params.getString(password2) == params.getString(password3)){
					String sql1 = "update users SET passWord='"+password3+"' WHERE phoneNumber='"+phoneNumber+"'";
					java.sql.Statement stat = conn.createStatement();
					int rs = stat.executeUpdate(sql1);
					if(rs>0){
						ret.put("state", "1 ");
					}
				}

			}else {

			}

			return ret;	
		} finally {
			conn.close();
		}


	}
	public static JSONObject upDateContrat(JSONObject params, ActionContext context) throws SQLException, 

	NamingException {	

		String cid = params.getString("id");
		String phoneNumber = params.getString("phoneNumber");
		String rent = params.getString("rent");
		String contact = params.getString("contact");
		String idCard = params.getString("idCard");
		Connection conn = context.getConnection(DATASOURCE_BLOCKCLOUD);
		// System.out.println("pn="+phoneNumber+"pwd="+password1+"");
		try{
			//String sql = "SELECT * FROM users where phoneNumber='"+phoneNumber+"' and passWord='"+password+"'";
			String sql = "SELECT count(cID) FROM contrat where cID='"+cid+"'";

			JSONObject ret = new JSONObject();
			int count = Integer.parseInt(DataUtils.getValueBySQL(conn, sql, null).toString());		
			System.out.println(count);
			if(count>0){								 

				String sql1 = "update contrat SET phoneNumber='"+phoneNumber+"',mouthRent='"+rent+"'"+",contacts='"+contact+"',idCard='"+idCard+"'where cID='"+cid+"'";
				System.out.println(sql1);
				java.sql.Statement stat = conn.createStatement();
				int rs = stat.executeUpdate(sql1);
				if(rs>0){
					ret.put("state", "1");
				}
			}

			else {

			}

			return ret;	
		} finally {
			conn.close();
		}


	}
	public static JSONObject newContrat(JSONObject params, ActionContext context) throws SQLException, 

	NamingException {
		String area = params.getString("area");
		String houseType = params.getString("type");
		String cid = params.getString("id");
		String phoneNumber = params.getString("phoneNumber");
		String rent = params.getString("rent");
		String contact = params.getString("contact");
		String idCard = params.getString("idCard");		
		Connection conn = context.getConnection(DATASOURCE_BLOCKCLOUD);
		JSONObject ret = new JSONObject();
		try{			
			String selectsql = "SELECT count(cID) FROM contrat where cID='"+cid+"'";
			int count =  Integer.parseInt(DataUtils.getValueBySQL(conn, selectsql, null).toString());
			if(count == 0){				
				String sql = "INSERT INTO contrat(mouthRent,contacts,phoneNumber,idCard,houseType,area,cid) VALUES('"+rent+"','"+contact+"','"+ phoneNumber +"','"+idCard+"','"+houseType+"','"+area+"','"+cid+"')";
				java.sql.Statement stmt = null;
				stmt = conn.createStatement();
				stmt.execute(sql);
				ret.put("state", "1");
			}else{
				//写入失败					
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}

		return ret;
	}
	public static JSONObject newBuild(JSONObject params, ActionContext context) throws SQLException, 

	NamingException {
		String imageURI = params.getString("imageURI");
		String building = params.getString("building");
		String intro = params.getString("intro");
		String address = params.getString("address");
		String phone = params.getString("phone");
		String register = params.getString("register");
		String belongs = params.getString("belongs");
		String type = params.getString("type");		
		Connection conn = context.getConnection(DATASOURCE_BLOCKCLOUD);
		JSONObject ret = new JSONObject();
		try{			
			String selectsql = "SELECT count(register_No) FROM building where register_No='"+register+"'";
			System.out.println(selectsql);
			int count =  Integer.parseInt(DataUtils.getValueBySQL(conn, selectsql, null).toString());
			if(count == 0){				
				String sql = "INSERT INTO building(building,content,b_address,b_type,phone,register_No,belongs,img) VALUES('"+building+"','"+intro+"','"+ address +"','"+type+"','"+phone+"','"+register+"','"+belongs+"','"+imageURI+"')";
				java.sql.Statement stmt = null;
				stmt = conn.createStatement();
				stmt.execute(sql);
				ret.put("state", "1");
			}else{
				//写入失败					
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}

		return ret;
	}
}
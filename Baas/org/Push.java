package org;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;

public class Push {
	public static boolean isEmptyString(String str){
		return (str==null) || (str.trim().equals(""));
	}
	
	public static JSONObject unRegisterTerminal(JSONObject params, ActionContext context){
		String type = params.getString("type");
		String terminalID = params.getString("terminalID");
		String personID = params.getString("personID");
		String protocol = params.getString("protocol");		
		if (isEmptyString(type))
			type = "mobile";
		if (isEmptyString(terminalID))
			terminalID = "";	
		if (isEmptyString(protocol))
			protocol = "mqtt";

		if (isEmptyString(personID)){
			throw new RuntimeException("取消推送终端时，用户标识不允许为空！");
		}
		
		String update = "delete from SA_Terminal  where sTypeID=? " +
				"and sAccountNumber=? and sPersonID=? and sProtocol=?";
		List<Object> binds = new ArrayList<Object>();
		binds.add(type);
		binds.add(terminalID);
		binds.add(personID);
		binds.add(protocol);
		update(update, binds, "system", context);
		return null;
	}
	
	private static int update(String sql, List<Object> binds, String database, ActionContext context){
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			conn = context.getConnection(database);
			stmt = conn.prepareStatement(sql);
			setParameters(stmt, binds);
			return stmt.executeUpdate();
		} catch (Exception e) {
			throw new RuntimeException("sql: " + sql + ", binds: "  + binds.toString(), e);
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}
			
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
	}
	
	//TODO 没有支持DB2
	public static void setParameters(PreparedStatement stmt, List<Object> binds) throws SQLException, IOException {
		/*
		if (DatabaseProduct.DB2.equals(dbType)) {
			int i = 0;
			//checkBizJNIWin64ER
			for (Object o : binds){
				if (o == null)
					stmt.setNull(++i, getNullType(dbType));
				else if (o instanceof InputStream) {
					stmt.setBinaryStream(++i, ((InputStream) o), ((InputStream) o).available());
				} else if (o instanceof BigDecimal) {
					//stmt.setDouble(++i, ((BigDecimal) o).doubleValue());
					stmt.setBigDecimal(++i, (BigDecimal)o);
				}else if (o instanceof Byte){
				    stmt.setInt(++i, ((Byte)o).intValue());
				}else if (o instanceof String){
					stmt.setString(++i, (String)o);
				}else if (o instanceof Short){
				    stmt.setShort(++i, ((Short)o).shortValue());
				}else if (o instanceof Integer){
					stmt.setInt(++i, ((Integer)o).intValue());
				}else if (o instanceof Long){
					stmt.setLong(++i, ((Long)o).longValue());
				}else if (o instanceof Float){
				    stmt.setFloat(++i, ((Float)o).floatValue());
				}else if (o instanceof Double){
				    stmt.setDouble(++i, ((Double)o).doubleValue());
				}else if (o instanceof byte[]){
				    stmt.setBytes(++i, (byte[])(byte[])o);
				}else if (o instanceof java.sql.Date){
				    stmt.setDate(++i, (java.sql.Date)o);
				}else if (o instanceof Time){
				    stmt.setTime(++i, (Time)o);
				}else if (o instanceof Timestamp){
				    stmt.setTimestamp(++i, (Timestamp)o);
				}else if ((o instanceof Boolean)) {
				    stmt.setBoolean(++i, ((Boolean)o).booleanValue());
				}else if ((o instanceof InputStream))
				    stmt.setBinaryStream(++i, (InputStream)o, -1);
				else if ((o instanceof Blob)){
					InputStream in = ((Blob)o).getBinaryStream();
					stmt.setBinaryStream(++i, in, in.available());
					//stmt.setBlob(++i, (Blob)o);
				}else if ((o instanceof Clob)){
					//stmt.setClob(++i, (Clob)o);
					InputStream in = ((Clob)o).getAsciiStream();
					stmt.setBinaryStream(++i, in, in.available());
						
				}else if (((o instanceof java.util.Date))){
					stmt.setTimestamp(++i, new Timestamp(((java.util.Date)o).getTime()));
				}else if ((o instanceof BigInteger))
					stmt.setString(++i, o.toString());
				else{
					stmt.setObject(++i, o);
				}
			}

		} else {
		*/
			int i = 0;
			for (Object o : binds){
				if (o == null)
					stmt.setNull(++i, java.sql.Types.NULL);
				else if (o instanceof InputStream) {
					stmt.setBinaryStream(++i, ((InputStream) o), ((InputStream) o).available());
				} else if (o instanceof BigDecimal) {
					//stmt.setDouble(++i, ((BigDecimal) o).doubleValue());
					stmt.setBigDecimal(++i, (BigDecimal)o);
				} else if (o instanceof Blob){
					InputStream in = ((Blob)o).getBinaryStream();
					stmt.setBinaryStream(++i, in, in.available());
				} else if (o instanceof Clob){
					InputStream in = ((Clob)o).getAsciiStream();
					stmt.setBinaryStream(++i, in, in.available());
				} else {
					stmt.setObject(++i, o);
				}
			}
		//}
	}
	
	
	public static JSONObject registerTerminal(JSONObject params, ActionContext context){
		String type = params.getString("type");
		String terminalID = params.getString("terminalID");
		String personID = params.getString("personID");
		String protocol = params.getString("protocol");		
		if (isEmptyString(type))
			type = "mobile";
		if (isEmptyString(terminalID))
			terminalID = "";	
		if (isEmptyString(protocol))
			protocol = "mqtt";		
		if (isEmptyString(personID)){
			throw new RuntimeException("注册推送终端时，用户标识不允许为空！");
		}
		
		if (type.equals("mobile")){
			List<Object> binds = new ArrayList<Object>();
			//删除当前设备关联的非当前用户
			String delete = "delete from SA_Terminal where (sTypeID=? " +
					"and sAccountNumber=? and sPersonID<>?)";
			binds.add("type");
			binds.add(terminalID);
			binds.add(personID);
			
			//删除当前用户的其它设备
			delete += " or (sTypeID=? and sPersonID=? and sAccountNumber<>?)";
			binds.add(type);
			binds.add(personID);
			binds.add(terminalID);
			
			update(delete, binds, "system", context);
		}
		
		String query = "select sValidState from SA_Terminal where sTypeID=? " +
				"and sAccountNumber=? and sPersonID=? and sProtocol=?";
		List<Object> binds = new ArrayList<Object>();
		binds.add(type);
		binds.add(terminalID);
		binds.add(personID);
		binds.add(protocol);
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		boolean queryError = true;
		try {
			conn = context.getConnection("system");
			stmt = conn.prepareStatement(query);
			setParameters(stmt, binds);
			rs = stmt.executeQuery();
			queryError = false;
			if (rs.next()){
				int valid = rs.getInt(1);
				if (valid != 1){
					String update = "update SA_Terminal set sValidState=1 where sTypeID=? " +
					"and sAccountNumber=? and sPersonID=? and sProtocol=?";
					update(update, binds, "system", context);
				}
			}else{
				String insert = "insert into SA_Terminal (sID, sValidState, sTypeID, sAccountNumber, sPersonID, version, sIsDefault," +
						"sProtocol, sTypeName) values (?, 1, ?, ?, ?, 0, 1, ?, ?)";
				List<Object> insertBinds = new ArrayList<Object>();
				insertBinds.add(UUID.randomUUID().toString().replaceAll("-", ""));
				insertBinds.add(type);
				insertBinds.add(terminalID);
				insertBinds.add(personID);
				insertBinds.add(protocol);
				insertBinds.add(type);
				update(insert, insertBinds, "system", context);
			}
			
			return null;
		} catch (Exception e) {
			String msg = e.getMessage() + "";
			if (queryError){
				msg = "sql: " + query + ", binds: " + binds.toString();
			}
			throw new RuntimeException(msg, e);
		} finally {
			try{
				if (rs != null)
					rs.close();
			}catch(Exception e){
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
	}
}

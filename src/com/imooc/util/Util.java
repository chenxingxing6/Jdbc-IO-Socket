package com.imooc.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Util {
	public static  Connection getConnection(){
		String driverClassName="com.mysql.jdbc.Driver";
		String URL = "jdbc:mysql://60.205.212.196:3306/imooc";
	    String username = "root";
	    String password = "123456";
	    Connection conn=null;
		try {
			Class.forName(driverClassName);
			conn=DriverManager.getConnection(URL, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void closeAll( Connection conn,Statement stmt,ResultSet rs){
		try {
			if(conn!=null){
				conn.close();
			}
			if(stmt!=null){
				stmt.close();
			}if(rs!=null){
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

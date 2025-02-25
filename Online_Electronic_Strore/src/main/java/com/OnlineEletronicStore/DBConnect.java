package com.OnlineEletronicStore;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection con=null;

	private DBConnect() {}
	
	static {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(DBInfo.dburl,DBInfo.dbName,DBInfo.dbPwd);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getCon() {
		
		return con;
	}
}

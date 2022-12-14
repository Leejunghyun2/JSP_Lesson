package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

	public static Connection dbconn() {
		String dbDriver = "oracle.jdbc.driver.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@localhost:1521/xe";
		String dbId = "jspTest";
		String dbPasswd = "1234";

		Connection conn = null;
		try {
			Class.forName(dbDriver);
		} catch (Exception e) {
			System.out.println("== 오라클드라이버 오류 ==");
			//e.printStackTrace();
		}

		try {
			conn = DriverManager.getConnection(dbUrl,dbId,dbPasswd);
		} catch (Exception e) {
			System.out.println(" == 오라클 접속 오류 ==" );
			//e.printStackTrace();
		}
		return conn;
	}

	public static void dbConnclose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if(rs != null) { rs.close(); }
		} catch (Exception e) {
			//e.printStackTrace();		
		}
		
		try {
			if(pstmt != null) { pstmt.close(); }
		} catch (Exception e) {
			//e.printStackTrace();		
		}
		
		try {
			if(conn != null) { conn.close(); }
		} catch (Exception e) {
			//e.printStackTrace(); 		
		}
	}

}

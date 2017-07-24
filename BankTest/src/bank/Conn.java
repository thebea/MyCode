package bank;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


public class Conn {
	    String url = "jdbc:mysql://localhost:3306/bank?characterEncoding=utf8&useSSL=true";
		String userName = "root";
		String password = "10346083";
		
		Connection conn;
		Statement stmt;
		ResultSet rs;
		
		/**
		 * @throws ClassNotFoundException 
		 */
		public Conn() throws ClassNotFoundException {
			stmt = null;
			rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = (Connection) DriverManager.getConnection(url, userName, password);
			} catch (SQLException e) {
				System.out.println(e.toString());
			} catch (ClassNotFoundException e) {
				System.out.println(e.toString());
			}
		}
		public boolean exeSql(String strSql) {
			try {
				stmt = (Statement) conn.createStatement();
				stmt.executeUpdate(strSql);
				return true;
			} catch (Exception e) {
				System.out.println(e.toString());
				return false;
			}
		}
		
		public ResultSet exeSqlQuery(String strSql) {
			try {
				stmt = (Statement) conn.createStatement();
				rs = (ResultSet) stmt.executeQuery(strSql);
			} catch (Exception e) {
				System.out.println(e.toString());
				rs = null;
			}
			return rs;
		}
		
		public static void main(String[] args) throws ClassNotFoundException {
			String str = "select * from user";
			Conn user = new Conn();
			ResultSet rs = user.exeSqlQuery(str);
			
			try {
				while(rs.next()) {
					System.out.println(rs.getString("id") + " " + rs.getString("password"));
				}
			} catch (SQLException e) {
				System.out.println(e.toString());
			}
		}
	}



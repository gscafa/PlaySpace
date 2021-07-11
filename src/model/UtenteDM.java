package model;
import java.sql.*;

public class UtenteDM {

	public static void updateUtente(String user,String pw, String email) {
		String sql = "update utente set password = ?, email = ? where username = ?;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, pw);
			st.setString(2, email);
			st.setString(3, user);
			
			st.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
	
	public static boolean checkPassword(String user,String pw) {
		boolean result=false;
		String sql = "select count(*) as r from utente where username = ? and password = ?;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,user);
			st.setString(2, pw);
			
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				if(rs.getInt("r") == 1)
					result = true;
			}
			
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return result;
	}
}

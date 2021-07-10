package model;
import java.sql.*;

public class UpdateUtente {

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
}

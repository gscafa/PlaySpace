package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckPassword {
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

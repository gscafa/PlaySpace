package model;

import java.sql.*;

public class MaxOrdine {

	public static int getMaxOrdine() {
		int x=0;
		String sql = "select max(idordine) as id from ordine;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				x = rs.getInt("id");
			}
			
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
}

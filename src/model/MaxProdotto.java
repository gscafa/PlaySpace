package model;

import java.sql.*;

public class MaxProdotto{

	public static int getMaxProdotto() {
		int x=0;
		String sql = "select max(idprodotto) as id from prodotto;";
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

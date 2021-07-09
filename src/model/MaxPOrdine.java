package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class MaxPOrdine {
	public static int getMaxPOrdine() {
		int x=0;
		String sql = "select max(idprodotto_ordine) as id from prodotto_ordine;";
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

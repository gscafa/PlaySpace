package model;
import java.sql.*;

public class DeleteProdotto {

	public static void deleteProdotto(int id) {
		String sql = "delete from prodotto where idprodotto = ?;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setInt(1, id);
			
			st.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
}
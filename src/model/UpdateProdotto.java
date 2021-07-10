package model;
import java.sql.*;

public class UpdateProdotto {

	public static void updateProdotto(int id, double prezzo, String descrizione) {
		String sql = "update prodotto set prezzo = ?, descrizione = ? where idprodotto = ?;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setDouble(1,prezzo);
			st.setString(2, descrizione);
			st.setInt(3, id);
			
			st.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
}
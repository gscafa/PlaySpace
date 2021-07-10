package model;
import java.sql.*;

public class UpdateProdotto {

	public static void updateProdotto(int id, double prezzo, String descrizione, String nome) {
		String sql = "update prodotto set prezzo = ?, descrizione = ?, nome = ? where idprodotto = ?;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setDouble(1,prezzo);
			st.setString(2, descrizione);
			st.setString(3, nome);
			st.setInt(4, id);
			
			st.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	}
}
package model;
import java.sql.*;
public class InsertProdotto {
	public static void insertProdotto(Prodotto p) {
		String sql="insert into prodotto values(?,?,?,?,?,?,0)";
		
		try {
			
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, p.getIdProdotto());
			st.setString(2,p.getNome());
			st.setString(3,p.getCategoria());
			st.setString(4,p.getDescrizione());
			st.setString(5,p.getPiattaforma());
			st.setDouble(6, p.getPrezzo());
			
			st.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}
	
	
	
	
	
}

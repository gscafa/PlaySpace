package model;
import java.sql.*;
import java.util.*;
public class GetOrdine {
	public static ArrayList<OrdineItem> getOrdine(int id) {
		ArrayList<OrdineItem> result = new ArrayList<OrdineItem>();
		String sql="select prodotto_ordine.* from prodotto_ordine join composto on(prodotto_ordine.idprodotto_ordine = composto.prodotto) join ordine on (composto.ordine = ordine.idordine) where idordine=?;";
		int idp,q;
		String nome,piattaforma,path;
		double p;
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,id);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				idp = rs.getInt("idprodotto_ordine");
				nome = rs.getString("nome");
				piattaforma = rs.getString("piattaforma");
				p = rs.getDouble("prezzo");
				q = rs.getInt("quantita");
				path = rs.getString("pathimmagine");
				result.add(new OrdineItem(idp,nome,piattaforma,p,q,path));
			}
			
			DriverManagerConnectionPool.releaseConnection(con);
			
		}
		catch(Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		
		
		
		
		
		return result;
	}
}

package model;
import java.sql.*;
import java.util.*;
public  class TuttiProdotti {

	public static ArrayList<Prodotto> getProdotti(){
		ArrayList<Prodotto> result = new ArrayList<Prodotto>();
		Prodotto temp;
		int id;
		String n,d,p;
		double pr,vm;
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			Statement st = con.createStatement();
			
			con.commit();
			ResultSet rs = st.executeQuery("SELECT * FROM prodotto;");
			while(rs.next()) {
				id=rs.getInt("idprodotto");
				n = rs.getString("nome");
				d = rs.getString("descrizione");
				p = rs.getString("piattaforma");
				pr = rs.getDouble("prezzo");
				vm = rs.getDouble("votomedio");
				result.add(new Prodotto(id,n,d,p,pr,vm));
				
				DriverManagerConnectionPool.releaseConnection(con);
			}
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return result;
	}
	
	
}

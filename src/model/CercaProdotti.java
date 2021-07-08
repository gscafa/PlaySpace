package model;
import java.sql.*;
import java.util.*;
public  class CercaProdotti {

	public static ArrayList<Prodotto> getProdotti(String categoria){
		ArrayList<Prodotto> result = new ArrayList<Prodotto>();
		Prodotto temp;
		int id;
		String n,d,p;
		double pr,vm;
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement("SELECT * FROM prodotto where categoria=?;");
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				id=rs.getInt("id");
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

package model;

import java.util.ArrayList;
import java.sql.*;


public class GetStoricoOrdini {
	public static ArrayList<Ordine> getStoricoOrdini(String user){
		ArrayList<Ordine> result = new ArrayList<Ordine>();
		String sql1 ="select ordine.* from utente join effettuazione on(utente.username = effettuazione.utente) join ordine on(effettuazione.ordine = ordine.idordine) where username=?;";
		int id;
		String data;
		double totale;
		
		
		
		
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql1);
			st.setString(1, user);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				id=rs.getInt("idordine");
				data = rs.getString("data");
				totale = rs.getDouble("totale");
				result.add(new Ordine(id,data,totale));
			}
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	
		return result;
	}
}

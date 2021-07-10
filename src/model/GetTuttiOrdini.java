package model;

import java.util.ArrayList;
import java.sql.*;


public class GetTuttiOrdini {
	public static ArrayList<Ordine> getTuttiOrdini(){
		ArrayList<Ordine> result = new ArrayList<Ordine>();
		String sql1 ="select ordine.*,utente.username from utente join effettuazione on(utente.username = effettuazione.utente) join ordine on(effettuazione.ordine = ordine.idordine);";
		int id;
		String data,user;
		double totale;
		
		
		
		
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery(sql1);
			
			while(rs.next()) {
				id=rs.getInt("idordine");
				data = rs.getString("data");
				totale = rs.getDouble("totale");
				user = rs.getString("username");
				result.add(new Ordine(id,data,totale,user));
			}
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	
		return result;
	}
}


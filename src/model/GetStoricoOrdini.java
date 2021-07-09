package model;

import java.util.ArrayList;
import java.sql.*;


public class GetStoricoOrdini {
	public static ArrayList<Ordine> getStoricoOrdini(String user){
		ArrayList<Ordine> result = new ArrayList<Ordine>();
		String sql ="select ordine.* from utente join effettuazione on(utente.username = effettuazione.utente) join ordine on(effettuazione.ordine = ordine.idordine) where username=?;";
		
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, user);
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		
		return result;
	}
}

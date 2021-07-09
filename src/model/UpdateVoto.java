package model;
import java.sql.*;
public class UpdateVoto {

	public static void updateVoto(int id, String user, int voto) {
		String q1 = "INSERT INTO valutazione VALUES (?, ?, ?);";
		String q2 = "UPDATE prodotto SET votomedio = (SELECT AVG(voto) FROM valutazione WHERE prodotto = ?) WHERE (idprodotto = ?);";
		
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st1 = con.prepareStatement(q1);
			PreparedStatement st2 = con.prepareStatement(q2);
			st1.setString(1,user);
			st1.setInt(2, id);
			st1.setInt(3, voto);
			
			st2.setInt(1, id);
			st2.setInt(2, id);
			
			st1.executeUpdate();
			st2.executeUpdate();
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
}

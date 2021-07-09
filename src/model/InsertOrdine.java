package model;
import java.sql.*;
public class InsertOrdine {

	public static void insertOrdine(Ordine ordine, String user) {
		String ord = "insert into ordine values(?,?,22,?);";
		String eff = "insert into effettuazione values (?,?)";
		String prod = "insert into prodotto_ordine values(?,?,?,?,?,?);";
		String comp = "insert into composto values(?,?);";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st1 = con.prepareStatement(ord);
			PreparedStatement st2 = con.prepareStatement(prod);
			PreparedStatement st3 = con.prepareStatement(comp);
			PreparedStatement st4 = con.prepareStatement(eff);
			st1.setInt(1,ordine.getIdOrdine());
			st1.setString(2, ordine.getData().toString());
			st1.setDouble(3, ordine.getTotale());
			st1.executeUpdate();
			
			st4.setString(1, user);
			st4.setInt(2, ordine.getIdOrdine());
			st4.executeUpdate();
			
			for(OrdineItem i : ordine.getProdotti()) {
				st2.setInt(1, i.getId());
				st2.setString(2,i.getNome());
				st2.setString(3,i.getPiattaforma());
				st2.setDouble(4, i.getPrezzo());
				st2.setInt(5, i.getQuantita());
				st2.setString(6, i.getPath());
				
				st3.setInt(1,ordine.getIdOrdine());
				st3.setInt(2, i.getId());
				
				st2.executeUpdate();
				st3.executeUpdate();
			}
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}

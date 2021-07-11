package model;
import java.sql.*;
import java.util.ArrayList;

public class OrdineDM {

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
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
	
		return result;
	}
	
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
	
	
	public static int getMaxOrdine() {
		int x=0;
		String sql = "select max(idordine) as id from ordine;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				x = rs.getInt("id");
			}
			
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
	
	
	public static int getMaxPOrdine() {
		int x=0;
		String sql = "select max(idprodotto_ordine) as id from prodotto_ordine;";
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				x = rs.getInt("id");
			}
			
			con.commit();
			DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
}

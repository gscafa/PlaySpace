package model;
import java.sql.*;
import java.util.ArrayList;
public class ProdottoDM {
	
	public static int getMaxProdotto() {
		int x=0;
		String sql = "select max(idprodotto) as id from prodotto;";
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
	
	public static Prodotto searchProdotto(int id) {
		Prodotto result= null;
		int idd=0;
		String n="",d="",p="";
		double pr=0,vm=0;
		try {
			Connection con = DriverManagerConnectionPool.getConnection();
			PreparedStatement st = con.prepareStatement("select * from prodotto where idprodotto = ?");
			st.setInt(1,id);
			con.commit();
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				idd=rs.getInt("idprodotto");
				n = rs.getString("nome");
				d = rs.getString("descrizione");
				p = rs.getString("piattaforma");
				pr = rs.getDouble("prezzo");
				vm = rs.getDouble("votomedio");
			}
			result = new Prodotto(idd,n,d,p,pr,vm);
			
		}
		catch(Exception e) {
			
		}
		
		return result;
	}
	
	
	

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
		
		
		public static void updateProdotto(int id, double prezzo, String descrizione, String nome) {
			String sql = "update prodotto set prezzo = ?, descrizione = ?, nome = ? where idprodotto = ?;";
			try {
				Connection con = DriverManagerConnectionPool.getConnection();
				PreparedStatement st = con.prepareStatement(sql);
				st.setDouble(1,prezzo);
				st.setString(2, descrizione);
				st.setString(3, nome);
				st.setInt(4, id);
				
				st.executeUpdate();
				con.commit();
				DriverManagerConnectionPool.releaseConnection(con);
			}
			catch(Exception e) {
				System.out.println(e);
			}
			
			
		}
		
		
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
		
		
		public static void deleteProdotto(int id) {
			String sql = "delete from prodotto where idprodotto = ?;";
			try {
				Connection con = DriverManagerConnectionPool.getConnection();
				PreparedStatement st = con.prepareStatement(sql);
				
				st.setInt(1, id);
				
				st.executeUpdate();
				con.commit();
				DriverManagerConnectionPool.releaseConnection(con);
			}
			catch(Exception e) {
				System.out.println(e);
			}
			
			
		}
		
		
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
		
		public static ArrayList<Prodotto> getProdotti(String categoria){
			ArrayList<Prodotto> result = new ArrayList<Prodotto>();
			Prodotto temp;
			int id;
			String n,d,p;
			double pr,vm;
			try {
				Connection con = DriverManagerConnectionPool.getConnection();
				PreparedStatement st = con.prepareStatement("SELECT * FROM prodotto where categoria=?;");
				st.setString(1, categoria);
				con.commit();
				ResultSet rs = st.executeQuery();
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

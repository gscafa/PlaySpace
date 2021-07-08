package model;
import java.sql.*;
public class PrendiProdotto {

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
}

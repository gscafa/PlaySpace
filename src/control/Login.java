package control;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String n="",c="",i="",ci="",dn="";
		boolean a=false;
		boolean found = false;
		HttpSession session = request.getSession();
		session.setAttribute("logged", false);
		try {
		Connection con = DriverManagerConnectionPool.getConnection();
		PreparedStatement st = con.prepareStatement("select * from utente where email = ? and password = ?;");
		st.setString(1, email);
		st.setString(2, password);
		
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			found = true;
			n = rs.getString("nome");
			c = rs.getString("cognome");
			i = rs.getString("indirizzo");
			ci = rs.getString("citta");
			dn = rs.getString("dataNascita");
			a  = rs.getBoolean("admin");
		}
		
		
		DriverManagerConnectionPool.releaseConnection(con);
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		if(found) {
		Utente user = new Utente(n,c,email,password,i,ci,dn,a);
		
		session.setAttribute("user", user);
		if(user != null) 
			session.setAttribute("logged", true);
		if(a)
			session.setAttribute("admin", true);
		session.setAttribute("userFound", true);
		request.getRequestDispatcher("index.jsp").forward(request,response);
		}
		else {
			session.setAttribute("userFound", false);
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

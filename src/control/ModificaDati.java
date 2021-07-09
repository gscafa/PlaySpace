package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DriverManagerConnectionPool;
import model.Utente;

/**
 * Servlet implementation class ModificaDati
 */
@WebServlet("/ModificaDati")

public class ModificaDati extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificaDati() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String user = request.getParameter("username");
		String passwordv = request.getParameter("passwordv");
		String passwordn = request.getParameter("passwordn");
		String email = request.getParameter("email");
		
		boolean a=false;
		boolean found = false;
		HttpSession session = request.getSession();
		session.setAttribute("logged", true);
		try {
		Connection con = DriverManagerConnectionPool.getConnection();
		PreparedStatement st = con.prepareStatement("update utente set username = ?, password = ?, email = ? where username = ?;");
		st.setString(1, user);
		
		if(!passwordv.equals(passwordn)) {
			
		st.setString(2, passwordn);
		
		}
		
		st.setString(3, email);
		
		Utente utente = (Utente) session.getAttribute("user");
		
		
		
		st.setString(4, utente.getUsername());
		
		st.executeUpdate();

	}
		
		catch(Exception e) {
			System.out.println(e);
		}
		
		/*if(found) {
			
			
			session.setAttribute("user", user);
			if(user != null) 
				session.setAttribute("logged", true);
			if(a) {
				session.setAttribute("admin", true);
			session.setAttribute("userFound", true);
			request.getRequestDispatcher("index.jsp").forward(request,response);
			}
			else {
				session.setAttribute("userFound", false);
				request.getRequestDispatcher("login.jsp").forward(request,response);
			}
			
			*/
	
	}
		
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

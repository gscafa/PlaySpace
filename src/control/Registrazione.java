package control;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.DriverManagerConnectionPool;

import java.sql.*;

/**
 * Servlet implementation class Registrazione
 */
@WebServlet("/Registrazione")
public class Registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected synchronized void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
	
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String indirizzo = request.getParameter("indirizzo");
		String citta = request.getParameter("citta");
		String dataNascita = request.getParameter("dataNascita");
		Connection con = null;
		try {
		con = DriverManagerConnectionPool.getConnection();
		if(con != null)System.out.println("OH YEAH");
		else System.out.println("OH NO");
		PreparedStatement st = con.prepareStatement("insert into utente values(?,?,?,?,?,?,?,?,0)");
		st.setString(1, username);
		st.setString(2, email);
		st.setString(3, password);
		st.setString(4, nome);
		st.setString(5, cognome);
		st.setString(6, indirizzo);
		st.setString(7, citta);
		st.setString(8, dataNascita);
		st.executeUpdate();
		con.commit();
		DriverManagerConnectionPool.releaseConnection(con);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

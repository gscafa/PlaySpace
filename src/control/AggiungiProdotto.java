package control;
import model.Prodotto;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.InsertProdotto;
import model.MaxProdotto;

/**
 * Servlet implementation class AggiungiProdotto
 */
@WebServlet("/AggiungiProdotto")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB after which the file will be
//temporarily stored on disk
maxFileSize = 1024 * 1024 * 10, // 10MB maximum size allowed for uploaded files
maxRequestSize = 1024 * 1024 * 50) // 50MB overall size of all uploaded file
public class AggiungiProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AggiungiProdotto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome,descrizione,categoria,piattaforma;
		double prezzo;
		int id=MaxProdotto.getMaxProdotto() + 1;
		nome = request.getParameter("nome");
		descrizione = request.getParameter("descrizione");
		categoria = request.getParameter("categoria");
		piattaforma = request.getParameter("piattaforma");
		prezzo = Double.parseDouble(request.getParameter("prezzo"));
		
		File file = new File("C:\\Users\\Utente\\eclipse-workspace1\\PlaySpace\\WebContent\\assets\\img\\prodotti\\"+id+".jpg");
		Part filePart = request.getPart("immagine");
		InputStream fileContent = filePart.getInputStream();
		copyInputStreamToFile(fileContent, file);
		
		InsertProdotto.insertProdotto(new Prodotto(id,nome,descrizione,piattaforma,prezzo,0,categoria));
		
		response.sendRedirect("admin.jsp");
	}
	
	public static final int DEFAULT_BUFFER_SIZE = 8192;
	public static void copyInputStreamToFile(InputStream inputStream, File file) throws IOException{
		try(FileOutputStream outputStream = new FileOutputStream(file, false)){
			int read;
			byte[] bytes = new byte[DEFAULT_BUFFER_SIZE];
			while((read = inputStream.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
		}
	}
	

}

package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: CriandoCookie
 *
 */
 public class CriandoCookie extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public CriandoCookie() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie meucookie = new Cookie("nome", "Edson");  

		meucookie.setMaxAge(60);  
		
		meucookie.setSecure(false); 
		
		meucookie.setComment("Meu nome"); 
		
		response.addCookie(meucookie);
		
		String html = "<html><head>"+
		"<title>Criando um Cookie</title>"+
		"</head><body>"+
		"<h2>Seu cookie foi criado com sucesso!</h2>"+
		"<a href=\"VisualizaCookie\">" +
		"Clique aqui para ver o Cookie criado" +
		"</a>"+
		"</body></html>";
	
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter( );
		writer.print(html);  
		writer.close( );

	}  	
	
	  	    
}
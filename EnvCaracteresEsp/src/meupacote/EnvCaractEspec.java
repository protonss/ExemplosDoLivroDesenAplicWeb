package meupacote;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 public class EnvCaractEspec extends javax.servlet.http.HttpServlet {

	public void destroy() {
		super.destroy();
	}   	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String queryString = 
			URLEncoder.encode("Cidadão&João","ISO-8859-1");
		String html = "<html><head>"+
		"<title>Enviando Caracteres especiais</title>"+
		"</head>"+
		"<body>" +
		"<a href=\"RecCaractEspec?dados="+queryString+"\">" +
				"Clique aqui para enviar" +
		"</a>"+
		"</body></html>";
	
	    response.setContentType("text/html");
	    PrintWriter writer = response.getWriter();
	    writer.print(html);  
	    writer.close();				
		
	}  	  	  	  

	public void init() throws ServletException {
		super.init();
	}   
}
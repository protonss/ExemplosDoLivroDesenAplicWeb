package meupacote;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RecCaractEspec extends javax.servlet.http.HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String dados = request.getParameter("dados");

		String html = "<html><head>"+
			"<title>Recebendo caracteres especiais</title>"+
			"</head>"+
			"<body>"+
			"Os dados recebidos s�o: <strong>"+dados+"</strong><br />"+
			"A query string recebida �: <strong>"+ request.getQueryString()+"</strong>" +
			"</body></html>";
	
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.print(html);  
		writer.close();		

	}  	  	  	  

}
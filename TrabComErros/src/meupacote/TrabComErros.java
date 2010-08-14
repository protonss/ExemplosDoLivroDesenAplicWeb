package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 public class TrabComErros extends javax.servlet.http.HttpServlet {
	private String valorIni1;
	private String valorIni2;
	 
	 
	public void destroy() {
		super.destroy();
	}   	

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
	throws ServletException, IOException {
		String val1 = request.getParameter("val1");
		String val2 = request.getParameter("val2");
		int valor1;
		int valor2;
		float resultado;

		if(val1!=null && val2!=null){
			valor1 = Integer.parseInt(val1);
			valor2 = Integer.parseInt(val2);
			resultado=valor1/valor2;
		}
		else{
			valor1 = Integer.parseInt(valorIni1);
			valor2 = Integer.parseInt(valorIni2);			
			resultado=valor1/valor2;
		}
	
		
		String html = "<html><head>"+
			"<title>Tratando Erros</title>"+
			"</head>"+
			"<body>"+
			"O resultado é: <strong>"+resultado+"</strong><br />"+
			"A query string enviada é: <strong>"+ 
			request.getQueryString()+"</strong><br />" +
			"<form action=\"TrabComErros\" method=\"get\">"+
			"Valor 1: <input type=\"text\" name=\"val1\" /><br />" +
			"Valor 2: <input type=\"text\" name=\"val2\" /><br />" +
			"<input type=\"submit\" value=\"Enviar\" />"+
			"</body></html>";
		
	    response.setContentType("text/html");
	    PrintWriter writer = response.getWriter();
	    writer.print(html);  
	    writer.close();			
	}  	  	  	  

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		valorIni1 = getServletContext().getInitParameter("val1");
		valorIni2 = getServletContext().getInitParameter("val2");
		
		
	}   
}
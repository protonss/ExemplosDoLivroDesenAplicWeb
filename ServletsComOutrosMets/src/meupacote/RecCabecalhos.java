package meupacote;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: RecCabecalhos
 *
 */
 public class RecCabecalhos extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public RecCabecalhos() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=ISO-8859-1");
		String html = "<html>" +
				"<head><title>Trabalhando com Servlet</title></head>" +
				"</head>" +
				"<body>";
		Enumeration e = request.getHeaderNames( );
		while(e.hasMoreElements( )){
			String cabecalho = (String) e.nextElement( );
			html+= "<strong>"+ cabecalho +": </strong>"+
			request.getHeader(cabecalho); 
			html+= "<br />";
		}
		
		html+=	"</body>" +
				"</html>";
		PrintWriter out = response.getWriter( );
		out.print(html);

	}   	  	    
}
package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: VisualizaCookie
 *
 */
 public class VisualizaCookie extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public VisualizaCookie() {
		super();
	} 
	
	/* (non-Javadoc)
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	Cookie listaCookies[] = request.getCookies( );
		
		Cookie nome = null; 

		if (listaCookies != null) {

		  for (int i = 0 ; i < listaCookies.length ; i++)  {
		    if (listaCookies[i].getName( ).equals("nome")) {
		      nome = listaCookies[i]; 
		      break;
		    }
		  }

		}
			
		String html = "<html><head>"+
		"<title>Visualizando um Cookie</title>"+
		"</head>"+
		"<body>" +
		"O Cookie chamado <strong>nome</strong> tem o valor: " +
		"<strong>" + nome.getValue( ) + "</strong>"+ 
		"</body></html>";
	
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter( );
		writer.print(html);  
		writer.close( );	

	}  	  	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}   
}
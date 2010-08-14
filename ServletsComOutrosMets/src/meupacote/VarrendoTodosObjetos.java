package meupacote;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: VarrendoTodosObjetos
 *
 */
 public class VarrendoTodosObjetos extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public VarrendoTodosObjetos() {
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
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration e = request.getParameterNames( ); 
		String html = "<html><head>"+
			"<title>Trabalhando com getParameterNames( )</title>"+
			"</head>"+
			"<body>" +
			"<h2>Músicas escolhidas:</h2>";
		while(e.hasMoreElements( )){ 	
			String param = (String) e.nextElement( ); 
			html+= "<strong>"+param+":</strong>"+ 
				request.getParameter(param)+"<br />";		
		}
		html+="</body></html>";		
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
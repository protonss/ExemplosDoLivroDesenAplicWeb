package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: ServletSessionPagUm
 *
 */
 public class ServletSessionPagUm extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ServletSessionPagUm() {
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
		HttpSession sessao = request.getSession(true); 
		sessao.setAttribute("nome", "Edson"); 
		sessao.setMaxInactiveInterval(1); 
		String html = "<html><head>"+
		"<title>Trabalhando com Sessão</title>"+
		"</head>"+
		"<body>" +
		"Sua sessão foi criada com sucesso!<br />"+
		"Sua ID é: <strong>" + sessao.getId( ) + "</strong><br />"+  
		"O tempo máximo de inatividade é: <strong>" +
 		sessao.getMaxInactiveInterval( ) + 
		"</strong> segundo(s)<br />"+ 
		"<a href=\"ServletSessionPagDois\">Clique aqui</a>"+
		" para ver a sessão na página seguinte."+	
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
package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: ServletSessionPagDois
 *
 */
 public class ServletSessionPagDois extends javax.servlet.http.HttpServlet {
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ServletSessionPagDois() {
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
		String nome = (String)sessao.getAttribute("nome");
	
		String html = "<html><head>"+
		"<title>Trabalhando com Sessão</title>"+
		"</head>"+
		"<body>";
		if(nome!=null){
			html += "Sua ID é:<strong>" + sessao.getId( ) + 
				"</strong><br />"+
				"E seu nome é: <strong>"+nome+"</strong><br />"+
			"<a href=\"ServletFecharSessao\">Clique aqui</a>"+
			" para fechar a sessão";

		}
		else{
			html += "Sua sessão não foi criada. <br />"+
				"<a href=\"ServletSessionPagUm\">Clique aqui</a>"+
				" para criar a sua sessão.";
				
		}
			html += "</body></html>";
		
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
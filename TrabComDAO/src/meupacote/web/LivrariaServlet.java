package meupacote.web;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import meupacote.Livros;
import meupacote.dao.*;

public class LivrariaServlet extends javax.servlet.http.HttpServlet {
    		
	protected void service(HttpServletRequest request, 
		HttpServletResponse response) 
	throws ServletException, IOException 
	{		
		String cmd = request.getParameter( "cmd" );

		if(cmd==null)
			cmd = "principal";

		InterfaceLivrosDAO dao;
		Livros livro = new Livros( );
		if(cmd!=null || !cmd.equalsIgnoreCase("principal")){

			livro.setIsbn(request.getParameter("isbn")); 
			livro.setTitulo(request.getParameter("titulo"));
			String edicao = request.getParameter("edicao");
			if(edicao==null)
				edicao="1";
			livro.setEdicao(Integer.parseInt(edicao));
			livro.setPublicacao(request.getParameter("publicacao"));
			livro.setDescricao(request.getParameter("descricao"));

		}

	        try
	        {	 
	        	
	        	dao = new LivrariaDAO( );
	        	RequestDispatcher rd = null;
	        	if(cmd.equalsIgnoreCase("listar")){
	                
	              List livrosList = dao.todosLivros( ); 
	              request.setAttribute( "livrosList", livrosList ); 
	              rd = request.getRequestDispatcher( "/mostrarLivrosCads.jsp" );

	        	}
	        	else if( cmd.equalsIgnoreCase( "addliv" ) ){
	               	               	                
	             dao.salvar( livro );
	             rd = request.getRequestDispatcher( "LivrariaServlet?cmd=listar" );

	        	}
            else if( cmd.equalsIgnoreCase( "exc" ) ){
	               	               	                
	            dao.excluir( livro ); 
	            rd = request.getRequestDispatcher( "LivrariaServlet?cmd=listar" );

	         }
           else if( cmd.equalsIgnoreCase( "atu" ) ){
	               	
                   livro = dao.procurarLivro(livro.getIsbn( ));
                   HttpSession session=request.getSession(true);
                   session.setAttribute( "livro",livro );
	                rd = request.getRequestDispatcher( "/formAtuLivro.jsp" );

	        	}
             else if( cmd.equalsIgnoreCase( "atualizar" ) ){
	               	               	                
	             dao.atualizar( livro );          
	             rd = request.getRequestDispatcher( "LivrariaServlet?cmd=listar" );

	        	}
	        	else if( cmd.equalsIgnoreCase( "principal" ) ){

	        		rd = request.getRequestDispatcher( "/index.jsp" );

	        	}	                
	                rd.forward( request, response ); 
	        }
	        catch( Exception e )
	        {
	            e.printStackTrace( );
	            throw new ServletException( e );
	        }		
	
	}
	  	    
}

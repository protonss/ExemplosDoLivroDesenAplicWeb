<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
    import="java.util.*, meupacote.Livros, meupacote.util.ConverteDate"  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com DAO e Model 2</title>
</head>
<body>
<table border="1" cellpadding="2" cellspacing="0">
<tr>
    <th>ISBN - Atualizar</th>
    <th>Título</th>
    <th>Publicado em</th>
    <th>Excluir Livro</th>
</tr>
<%
List livrosList = ( List )request.getAttribute( "livrosList" ); 

for( Iterator i=livrosList.iterator( ); i.hasNext( ); ) 
{
  Livros l = ( Livros )i.next( );

%>
 <tr>
     <td>
			<a href="LivrariaServlet?cmd=atu&isbn=<%=l.getIsbn( )%>"> 
					<%=l.getIsbn( )%>
			</a>
		</td>
     <td><%=l.getTitulo( )%></td>
     <td>
				<%= ConverteDate.formatarData(l.getPublicacao( ))%> 
		</td>
     <td>
				<a href="LivrariaServlet?cmd=exc&isbn=<%=l.getIsbn( )%>"> 
					Excluir
				</a>
		</td>
</tr>
<%
}// end for
%>
</table>
<br />
<a href="formInserindoDados.html">Adicionar um novo livro</a>
<br />
<a href="index.jsp">Página Principal</a>
</body>
</html>

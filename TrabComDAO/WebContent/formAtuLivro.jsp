<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
    import="meupacote.util.ConverteDate"  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Trabalhando com DAO</title>
</head>
<body>
    <jsp:useBean id="livro" scope="session" class="meupacote.Livros" /> 
    <%
        String publicacao = livro.getPublicacao();
    
    %>
<form action="LivrariaServlet?cmd=atualizar" method="post">
<table>
	<tr>
		<td>ISBN:</td><td><input type="text" name="isbn" value="${livro.isbn}" readonly="readonly" /></td>
	</tr>
	<tr>
		<td>Título:</td><td><input type="text" name="titulo" value="${livro.titulo}" /></td>
	</tr>
	<tr>
		<td>Edição:</td><td><input type="text" name="edicao" value="${livro.edicao}" /></td>
	</tr>
	<tr>
		<td>Publicação:</td><td><input type="text" name="publicacao" value="<%=ConverteDate.formatarData(publicacao)%>" /></td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td><textarea name="descricao" rows="5" cols="25">${livro.descricao}</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btAtualizar" value="Atualizar" />
		</td>
	</tr>		
</table>
</form>
</body>
</html>
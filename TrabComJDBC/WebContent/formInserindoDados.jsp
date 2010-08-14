<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Inserindo dados via JDBC com JSP</title>
</head>
<body>
<form action="inserindoDados.jsp" method="post">
<table>
	<tr>
		<td>ISBN:</td>
		<td><input type="text" name="isbn" /></td>
	</tr>
	<tr>
		<td>Título:</td>
		<td><input type="text" name="titulo" /></td>
	</tr>
	<tr>
		<td>Edição:</td>
		<td><input type="text" name="edicao" /></td>
	</tr>
	<tr>
		<td>Publicação:</td>
		<td><input type="text" name="publicacao" /></td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td><textarea name="descricao" rows="5" cols="25"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btCadastrar" value="Enviar" />
		</td>
	</tr>		
</table>
</form>
</body>
</html>

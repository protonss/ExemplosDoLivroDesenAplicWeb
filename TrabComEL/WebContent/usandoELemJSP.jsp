<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com Expression Language</title>
</head>
<body>
<h2>Express�es Aritm�ticas</h2>
	Um exemplo de c�lculo 1 + 5 * 10 - 3 / 2: 
	<strong> ${1 + 5 * 10 - 3 / 2} </strong><br/>
	Um valor negativo (-5 -8): <strong> ${-5 - 8}</strong><br/>
	Uma divis�o usando div: <strong> ${6 div 2}</strong><br/>
	O resto de uma divis�o (10%8): <strong>${10 % 8}</strong>
	<h2>Compara��es</h2>
	<h3>Utilizando Boolean</h3>
	Uma compara��o usando operador tern�rio "? :" : 
	<strong>${(true) ? "verdadeiro":"falso"} </strong>
	<h2>Operador empty</h2>
	empty "" : <strong>${empty ""}</strong><br/>
	empty "texto" : <strong>${empty "texto"}</strong><br/>
	<h2>Valor Null</h2>
	null == null : <strong>${null == null}</strong><br/>
	"null" == null : <strong> ${"null" == null}</strong><br/>
</body>
</html>
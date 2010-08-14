<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado de livros pesquisados</title>
</head>
<body>
<f:view>
	<h:messages />
	<h1>Livros Encontrados</h1>
	<h:form>
		<h:dataTable value='#{livrosView.buscarLivro}' var='item' border="1"
			cellpadding="2" cellspacing="0">
			<h:column>
				<f:facet name="header">
					<h:outputText value="ISBN" />
				</f:facet>
				<h:outputText value="#{item.isbn}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Título" />
				</f:facet>
				<h:outputText value="#{item.titulo}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText value="Publicado em" />
				</f:facet>
				<h:outputText value="#{item.publicacao}"
					converter="converteAnoMySQL" />
			</h:column>
		</h:dataTable>
	</h:form>
</f:view>
</body>
</html>

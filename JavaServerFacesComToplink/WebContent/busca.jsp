<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busca com JSF e Hibernate</title>
    </head>
    <body>
    
    <f:view>
        <h:form id="buscar">
		<h:panelGrid columns="2">
			<f:facet name="header">
				<h:outputText value="Busca de Livros"/>
			</f:facet>

			<h:outputText value="Título:" />
			<h:inputText size="30" id="titulo" value="#{livrosView.keysearch}" />

		</h:panelGrid>

			<h:commandButton value="Buscar" action="pesquisado" />			    
        </h:form>
    </f:view>
    
    </body>
</html>

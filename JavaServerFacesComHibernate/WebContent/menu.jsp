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
        <title>JSP Page</title>
    </head>
    <body>

    <h1>JSP Page</h1>
    
    <f:view> 
        <h:form>
            <h:commandLink action="#{livrosView.novoLivro}" value="Cadastro de Livros com JSF e DAO"/><br />
            <h:commandLink action="mostrar" value="Mostrar Livros Cadastrados com JSF e DAO"/>
        </h:form>
    </f:view>
    
    </body>
</html>

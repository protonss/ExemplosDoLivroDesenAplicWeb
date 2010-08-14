<%@ page language="java" 
contentType="text/html"
pageEncoding="ISO-8859-1"
%>
<%@ taglib uri="http://java.sun.com/jsf/html" 
        prefix="h"%> 
<%@ taglib uri="http://java.sun.com/jsf/core" 
        prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Meu Primeiro JSF</title>
    </head>
    <body>
        <f:view>
            <h:form id="formulario">  
                Digite seu nome:
                <h:inputText id="nome" 
                    value="#{MeuBean.nome}" 
                    required="true" />  
                
                <h:commandButton 
                    action="#{MeuBean.acao}" 
                    value="Enviar" 
                    id="submit" /> 
                
                <br />
                
                <strong> <h:messages /> </strong>
            </h:form>
        </f:view>
    </body>
</html>

<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<!DOCTYPE HTML PUBLIC 
	"-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Mostrar Livros</title>
    </head>
    <body>
      <f:view>
            <h:messages />
            <h:form>
                <h:dataTable 
                	value="#{livrosView.todosComAutorEditora}" 
                	var="item" border="1" 
                	cellpadding="2" cellspacing="0">
            		<f:facet name="header">
						<h:outputText value="Mostrar Livros, Editora e Autores"/>
					</f:facet>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="ISBN"/>
                        </f:facet>
                        <h:outputText value="#{item[0]}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Título"/>
                        </f:facet>
                        <h:outputText value="#{item[1]}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Editora"/>
                        </f:facet>
                        <h:outputText 
                        		value="#{item[2]}" />
                    </h:column>                                       
                     <h:column>
                        <f:facet name="header">
                            <h:outputText value="Autor"/>
                        </f:facet>
                        <h:outputText 
                        		value="#{item[3]}" />
                    </h:column> 
                
                </h:dataTable>

            </h:form>
        </f:view>
    </body>
</html>

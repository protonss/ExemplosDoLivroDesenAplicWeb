<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Cadastro de Livros</title>
    </head>
    <body>
<f:view>
	<h:form id="cadastro">
			<h:panelGrid columns="3">
			<f:facet name="header">
				<h:outputText value="Cadastro de Livros"/>
			</f:facet>
			<h:outputText value="ISBN:" />
			<h:inputText size="15" 
						 id="isbn" 
						 value="#{livrosView.livro.isbn}"
						 required="true"
						 validator="#{livrosView.validaISBN}"
						  >			  
			<f:validateLength minimum="13" maximum="13"/>			  
			</h:inputText>
				<h:message for="isbn"/>		  

			<h:outputText value="Título:" />
			<h:inputText 
					size="30" 
					id="titulo" 
					value="#{livrosView.livro.titulo}"
			 		required="true"
			 />
			<h:message for="titulo"/>

			<h:outputText value="Edição:" />
			<h:inputText size="10" 
						id="edicao" 
						value="#{livrosView.livro.edicao}"
			>
						 
			</h:inputText>
			<h:message for="edicao"/>
			
			<h:outputText value="Publicação:" />
			<h:inputText size="10" id="publicacao" value="#{livrosView.livro.anoPublicacao}" />
			<h:message for="publicacao"/>
			
			<h:outputText value="Descrição:" />
			<h:inputTextarea cols="20" id="descricao" rows="5" value="#{livrosView.livro.descricao}" />
			<h:message for="descricao"/>
		</h:panelGrid>

			<h:commandButton value="Cadastrar" action="#{livrosView.create}" />			
		<h:commandButton value="Limpar" type="reset" />
		<h:commandButton value="Cancelar" action="mostrar" />
		
	</h:form>

</f:view>
    
    </body>
</html>

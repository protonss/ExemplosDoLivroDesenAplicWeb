<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="https://ajax4jsf.dev.java.net/ajax" prefix="a4j"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrando Autores com Ajax4Faces</title>
<link href="css/estilos.css" rel="stylesheet" />
</head>
<body>
<f:view>
	<a4j:region>
		<a4j:outputPanel id="msg">
			<h:messages />
		</a4j:outputPanel>
		<a4j:outputPanel id="saida" >
		<h:form id="cadastro">
			<h:panelGrid columns="2">
				<f:facet name="header">
					<h:outputText value="Cadastro de Autores" />
				</f:facet>
				<h:outputText value="Nome:" />
				<h:inputText size="15" id="nome" 
					value="#{autores.autor.nome}" styleClass="campo"/>

				<h:outputText value="E-mail:" />
				<h:inputText size="30" id="email" 
					value="#{autores.autor.email}" styleClass="campo" />

				<h:outputText value="Nascimento:" />
				<h:inputText size="10" id="nascimento"
					value="#{autores.autor.nascimento}" styleClass="campo">
					<f:convertDateTime pattern="dd/MM/yyyy" />

				</h:inputText>

			</h:panelGrid>

			<a4j:commandButton value="Salvar" action="#{autores.salvar}"
				reRender="saida,msg" />					

		    <h:dataTable 
                value="#{autores.todosAutores}" 
                var="item" border="0" 
                cellpadding="2" cellspacing="0"
                styleClass="grid"
                columnClasses=",,,centro,centro"
                >
            		<f:facet name="header">
						<h:outputText value="Autores Cadastrados"/>
					</f:facet>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Nome"/>
                        </f:facet>
						<h:outputText value="#{item.nome}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="E-mail"/>
                        </f:facet>
                        <h:outputText value="#{item.email}"/>
                    </h:column>
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Nascimento"/>
                        </f:facet>
                        <h:outputText 
                        		value="#{item.nascimento}" 
                        		 >
                        	<f:convertDateTime pattern="dd/MM/yyyy" /> 
                        		 
                        </h:outputText>
                    </h:column>                    
                    
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Excluir"/>
                        </f:facet>
                         <a4j:commandLink id="excluir" 
                        		action="#{autores.excluir}"
                        		reRender="saida,msg">
                        	<h:graphicImage value="imagens/delete.gif"
                        		alt="Clique aqui para excluir o Autor"
                        		styleClass="imagem"
                        		  />                        		
                        	<a4j:ajaxListener 
                        		type="org.ajax4jsf.ajax.ForceRender" />	
                         </a4j:commandLink>		
                    </h:column>  
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Alterar"/>
                        </f:facet>
                         <a4j:commandLink id="alterar" 
                        		action="#{autores.prepararPAlterar}"
                        		reRender="saida,msg">
                        	<h:graphicImage value="imagens/edit.gif"
                        		alt="Clique aqui para alterar o Autor"
                        		styleClass="imagem"
                        		  />
                        	<a4j:ajaxListener 
                        		type="org.ajax4jsf.ajax.ForceRender" />	
                         </a4j:commandLink>		
                    </h:column>                
                </h:dataTable>

		</h:form>
	
		</a4j:outputPanel>
	</a4j:region>
</f:view>
</body>
</html>

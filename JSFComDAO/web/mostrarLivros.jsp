<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Mostrar Livros</title>
		<style>
		 .tabela {
		   border: solid 1px #000;
		}
		
		.cabecalho {		
		   text-align: center;		
		   color: #FFF;	
		   background: #999;
		}
		
		.linha_a {
			background: #FFF;
		}
		
		.linha_b {
		   background: #CCC;
		}
		   
		.coluna_a {
			background: #CCC;
			font-weight:bold
			
		}
		a{color:#000;font-weight:bold}
		
		.coluna_b {
		   background: #FFF;
		   font-weight:bold
		}		   
		        
		</style>


</head>
<body>
<f:view>
	<h:messages />
	<h:form>
		<h:dataTable value='#{livrosView.todos}' var='item' border="1"
			cellpadding="2" cellspacing="0"
			   styleClass="tabela"
    			headerClass="cabecalho"
    			rowClasses="linha_a,linha_b"
    			columnClasses="coluna_a, coluna_b"	
			>
			<f:facet name="header">
				<h:outputText value="Mostrar Livros" />
			</f:facet>
			<h:column>
				<f:facet name="header">
					<h:outputText value="ISBN" />
				</f:facet>
				<h:commandLink action="#{livrosView.editar}" value="#{item.isbn}" />
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


			<h:column>
				<f:facet name="header">
					<h:outputText value="Excluir Livro" />
				</f:facet>
				<h:commandLink action="#{livrosView.excluir}" value="Excluir" />
			</h:column>
		</h:dataTable>
		<h:commandLink action="#{livrosView.novoLivro}"
			value="Cadastrar novo livro" />
	</h:form>
</f:view>
</body>
</html>

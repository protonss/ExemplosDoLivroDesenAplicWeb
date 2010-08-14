<html>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>

<f:view locale="#{Sessao.locale}">
	<f:loadBundle basename="meupacote.rotulos" 
										var="msgs" />
	<head>
	<title><h:outputText value="#{msgs.titulo}" /></title>
	</head>
	<body>
	<h:form>
		<h:commandLink id="en" action="null"
			actionListener="#{Sessao.setLanguage}" value="#{msgs.ingles}" /> | 
		<h:commandLink id="pt" action="null"
			actionListener="#{Sessao.setLanguage}" value="#{msgs.portugues}" />
		<br />

		<h:outputText value="#{msgs.nome}" />
		<h:inputText value="#{MeuBean.nome}" />
		<br />
		<h:outputText value="#{msgs.email}" />
		<h:inputText value="#{MeuBean.email}" />
		<br />
		<h:commandButton value="#{msgs.enviar}" />


	</h:form>

	</body>

</f:view>

</html>

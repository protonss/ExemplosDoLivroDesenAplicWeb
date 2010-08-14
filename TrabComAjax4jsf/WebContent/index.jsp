<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="https://ajax4jsf.dev.java.net/ajax" prefix="a4j"%>
    <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
    <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trabalhando com Ajax4jsf</title>
</head>
<body>
        <f:view>
          <h:form>
            <h:inputText size="50" value="#{bean.text}" > 
              <a4j:support event="onkeyup" reRender="rep"/>
            </h:inputText>
            <h:outputText value="#{bean.text}" id="rep"/>
          </h:form>
        </f:view>
</body>
</html>
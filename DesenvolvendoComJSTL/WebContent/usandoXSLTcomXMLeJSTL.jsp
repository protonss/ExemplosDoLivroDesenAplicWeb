<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<c:import url="livros.xml" var="livros" />
<c:import url="livros.xsl" var="xslt" />
<x:transform xml="${livros}" xslt="${xslt}"/>
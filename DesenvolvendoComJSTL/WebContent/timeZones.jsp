<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Time Zones</title>
</head>
<body>
<jsp:useBean id="data" class="java.util.Date" />
<table border="1">
    <c:forEach var="timezone"
      items="<%=java.util.TimeZone.getAvailableIDs()%>">
        <tr>
          <td width="51%">
            <c:out value="${timezone}" />
          </td>

          <td width="49%">
            <fmt:timeZone value="${timezone}">
              <fmt:formatDate value="${data}" timeZone="${zn}"
              type="both" />
            </fmt:timeZone>
          </td>
        </tr>
      </c:forEach>
</table>

</body>
</html>
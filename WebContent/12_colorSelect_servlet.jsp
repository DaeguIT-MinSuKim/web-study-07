<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%=request.getAttribute("arg") %> --%>
	<c:set var="arg" value='${arg}' />
	<c:set var="val" value='${val}' />
<%-- 	<c:out value="arg"/> --%>
	<span style="${arg}">${val}</span>
	
<%-- 	<c:set var="prop" value="${map}"/>
	<span style="${prop.attr}">${prop.txt}</span> --%>

	<span style="${map.attr}">${map.txt}</span>
</body>
</html>


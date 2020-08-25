<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>c
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="http://localhost:8080/web-study-07/02_el.jsp" var="data"/>
	${data}
	
	<c:url value="images/park.jpg" var="data"></c:url>
	<h3>${data}</h3>
	<img src="${data}" width='150' height='150'>
</body>
</html>
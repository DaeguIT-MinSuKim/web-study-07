<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="age" value="30" scope="page"></c:set>
	나이:<c:out value="${age}">10</c:out>
	<br>
	<c:remove var="age" scope="page"></c:remove>
	나이:<c:out value="${age}">10</c:out><br>
	
	<c:catch var="errmsg">
		예외 발생 전<br>
		<%=1 / 0%><br>
		예외 발생 후<br>
	</c:catch>
	
	<c:if test="${errmsg != null}">
		<c:out value="${errmsg}"></c:out>
	</c:if>
	
	<br>
	
	<%=request.getParameter("name") %>
	${param.name}
	<br>
	
	<c:catch var="e">
        name 파라미터 값 = <%=request.getParameter("name")%><br>
        <c:if test="${param.name eq 'test'}">
              ${param.name}은 test입니다.
        </c:if>
        <c:if test="${empty param.name}">
        	<% if (true) throw new NullPointerException(); %>
        </c:if>
    </c:catch>
    <p>
    <c:if test="${e ne null }">
        익셉션이 발생하였습니다:<br> ${e}
<%--      <c:redirect url="http://search.daum.net/search">
		<c:param name="w" value="blog" />
		<c:param name="q" value="공원" />
	</c:redirect> --%>
    </c:if>

</body>
</html>









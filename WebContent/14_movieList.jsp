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
	<c:forEach var="movie" items="${movieArr}" varStatus="status">
		${status.index + 1}번째 <c:out value="${movie}"/> <c:out value="${status.count}"/><br>
	</c:forEach>
	<hr>
	
	<ul>
		<c:forEach var="i" begin="0" end="2" items="${ strMovieList}">
			<li>${i}
		</c:forEach>
	</ul>
	<hr>
	<ul>
		<c:forEach var="i" items="${mapMovie}">
			<c:choose>
				<c:when test="${i.key eq 'movieArr'}">
					<li>영화 목록
					<ol>
						<c:forEach var="movie" items="${i.value}">
							<li>${movie}
						</c:forEach>
					</ol>
				</c:when>
				<c:otherwise>
					<li>${i.key} = ${i.value}
				</c:otherwise>
			</c:choose>	
		</c:forEach>
       </ul>
       
       	<hr>
	
	<ul>
		<c:forEach var="i" items="${ strMovieList}" varStatus="status">
			<c:if test="${status.first }">
				<li style="font-weight: bold; color:red;">${i}</li>
			</c:if>
			<c:if test="${not status.first }">
				<li>${i}</li>
			</c:if>
		</c:forEach>
	</ul>
	<hr>
	<ul>
		<c:forEach var="i" items="${ strMovieList}" varStatus="status">
			${i} <c:if test="${not status.last }">,</c:if>
		</c:forEach>
	</ul>
	
	<hr>
	<c:forTokens var="color" items="red, green, blue" delims=",">
		${color }<br>
	</c:forTokens>
	
	<hr>
	<c:forTokens var="color" items="${tokens }" delims=",">
		${color }<br>
	</c:forTokens>
</body>
</html>








<%@page import="web_study_07.dto.Member"%>
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
	이름 : ${member.name}<br>
	아이디 : ${member["userId"]}
	
	<hr>
	<c:set var="member2" value= "<%= new Member(\"test\", \"aaa\") %>" />
	\${member2.name} = ${member2.name}<hr>
	\${member2.userId} = ${member2.userId}<hr>
	
	<c:set target="${member2}" property="name" value="박유경"/>
	<c:set target="${member2}" property="userId" value="pyk"/>
	\${member2.name} = ${member2.name}<hr>
	\${member2.userId} = ${member2.userId}<hr>
	
</body>
</html>
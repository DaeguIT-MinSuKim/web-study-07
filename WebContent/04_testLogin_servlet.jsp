<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신이 입력한 정보입니다(고전적인 방식). <hr>
	아이디 : <%= request.getAttribute("id")%> <br>
	비밀번호 : <%= request.getAttribute("pwd")%> <br><br>
	당신이 입력한 정보입니다(EL 방식). <hr>
	아이디 : ${id} <br>
	비밀번호 : ${pwd}
</body>
</html>
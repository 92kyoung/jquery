<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% 
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	설정된 id : ${ sessionScope.id } <br> <!-- SESSSION 공유 영역에 있는 ID -->
	설정된 password : ${ sessionScope.password } <br> 
	
	<a href =" remove.jsp ">세션 삭제</a>
</body> 
</html>
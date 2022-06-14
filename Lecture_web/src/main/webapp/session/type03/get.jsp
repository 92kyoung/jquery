<%@page import="kr.ac.kopo.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   MemberVO member = (MemberVO)session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--  설정된 ID : <%= member.getId() %> <br> <!-- member가 null이면 오류남 --> --%>
	설정된 id : ${ sessionScope.member.id } <br> <!-- member가 자바빈즈 클래스 이므로 . 으로 getter 메소드를 사용한다.  -->
	설정된 password : ${ member.password } <br>  <!-- id, password 가 session공유영역에만 있으니까 이 경우에는 그냥 공유영역 명시안해도 된다. -->
	
	<a href =" remove.jsp ">세션 삭제</a>
</body> 
</html>
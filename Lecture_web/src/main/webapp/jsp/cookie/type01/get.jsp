<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>\

<%
	Cookie [] cookies = request.getCookies();
    
    StringBuilder sb = new StringBuilder();
    
	for(Cookie c : cookies){
		String name = c.getName();
		String value = c.getValue();
		sb.append("쿠키이름 : "+name+",");
		sb.append("쿠키값 : "+value+"<br>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 확인</h2>
	<%= sb.toString() %>
	<a href="makeForm.jsp">쿠키 설정 이동</a>
</body>
</html>
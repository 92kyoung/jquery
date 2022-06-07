<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Map<String,String> b = new HashMap<String, String>();
	b.put("no","1");
	b.put("title","test");
	
	pageContext.setAttribute("board",b); //공유영역

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	<hr>
	no : <%= ((Map<String,String>)pageContext.getAttribute("board")).get("no") %><br>
	<hr>
	no : ${board.no} <br>
	no : ${board.title}<br>
	
	
	aaa : ${ board.aaa } <br>  <!-- empty 형태 -->
	
	<!-- map에서는 에러가 안나고 자바 빈즈 클래스에서는 에러가 난다.   -->
</body>
</html>
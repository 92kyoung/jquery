<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List <String> nameList = new ArrayList<>();
	nameList.add("홍길동");
	nameList.add("구길동");
	nameList.add("윤길동");
	
	pageContext.setAttribute("names",nameList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫 번째 이름 : <%= nameList.get(0) %> <br> <!-- 공유 영역 x  -->
	<hr>
	첫 번째 이름 : ${ names[0] } <br>  <!-- 이 형태를 보고  names가 배열인지 , 리스트 인지 유추할 수 는 없다 -->
	두 번째 이름 : ${ names[1] } <br>
	세 번째 이름 : ${ names[2] } <br>
</body>
</html>
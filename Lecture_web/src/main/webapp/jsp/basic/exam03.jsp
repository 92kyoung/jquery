<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="java.util.Random" %> <!-- random 패키지 임포트 --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		1~10 사이의 난수를 추출하여 출력
	 --%>
	 
	 <h1>1~10 사이의 임의의 수 출력</h1>
	 <% 
	 	//java.util.Random r = new java.util.Random(); 위에 페이지 지시자로 자바.유틸.랜덤을 임포트 해주었기 때문에 아래 처럼 그냥 바로 쓰면됨
	    Random r = new Random();
	 	int random = r. nextInt(10)+1;
	 	
	 %>
	 추출된 정수: <%= random %> <br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10사이의 정수 출력</h1>
	<%
		int sum = 0;
		for(int i=0; i<11; i++){
			sum=sum+i;
	%>
	
		<%= i %><br>     <!-- 변수 i를 출력하겠다 -->  <!--  <%= i %> = out.write = out.println   -->
		
	<%
		}
	%>
	1~10 사이의 총합: <%= sum %> <br>
</body>
</html>
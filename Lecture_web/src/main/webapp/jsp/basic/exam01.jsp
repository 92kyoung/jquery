<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10사이의 정수를 출력</h1>  
	<% //자바코드 작성
	//서비스 메소드에 들어가게 된다. 
	for(int i =1; i<=10; i++){
		//System.out.println(i);//콘솔에 출력
		out.println(i+"<br>"); //servlet 출력방식
							   // jsp 파일이 servlet 파일로 변환이 되기 때문에 servlet 변수를 사용해도 문제가 없다. 
		                       //out.println = out.write
	}
	
	%>
</body>
</html>
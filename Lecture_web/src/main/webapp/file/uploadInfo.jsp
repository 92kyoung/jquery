<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	    //한글 깨짐을 방지하기 위해서 reader 감싸서 읽는다
	    //checked Exception 인데 try catch 문 없어도 에러 안나는 이유 : 
	    	 //서비스가 try catch문이 자동으로 생성되고 그안에 코드가 입력되기 때문
	    	 
		InputStreamReader isr = new InputStreamReader(request.getInputStream(),"utf-8");  //읽어오기
		BufferedReader br = new BufferedReader(isr); //속도향상을 위해
	    
	    while(true){
	    	String buf = br.readLine();
	    	if(buf == null) break;
	    	out.write(buf+"<br>");
	    }
	%>
</body>
</html>
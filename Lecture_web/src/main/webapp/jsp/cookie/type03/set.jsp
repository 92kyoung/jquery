<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
	/* 유효시간은 인티저형으로 받고 싶다. 근데 파라미터 값이 null로 오면 이 값을 인티저파스인트로 변환할 수 없기 때문에 일단 문자형으로 받은 뒤 나중에 인티저형으로 변환한다.  */
	String cAge = request.getParameter("cAge");
	
	//인코딩
	cName = URLEncoder.encode(cName);
	cValue = URLEncoder.encode(cValue);	
	
	
	
	//쿠키생성
	Cookie cookie = new Cookie(cName,cValue);
	
	//유효기간 설정
	if(cAge != null && cAge.trim().length() >0){
		cookie.setMaxAge(Integer.parseInt(cAge)*60); /* 초 단위  설정이므로 분단위로 만들기 위해서 60을 곱함 */
	}
	
	//쿠키 전송
	response.addCookie(cookie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 설정 완료 </h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>
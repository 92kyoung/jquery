<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c = new Cookie ("type01",URLEncoder.encode("/ 루트설정","utf-8"));
	c.setPath("/");  /* localhost:9999 밑에 있는 모든 폴더 파일에 적용됨 , mission-web lecture-web 포함 모든 하위 폴더 */
	
	Cookie c2 = new Cookie ("type02",URLEncoder.encode("/Lecture-Web/jsp/cookie/type02","utf-8")); /* 값에 한글 썼기 때문에 인코더 씀  */
	c2.setPath("/Lecture-web/jsp/cookie/type02"); /* c와 c2가 보임 */
	
	Cookie c3 = new Cookie ("type03",URLEncoder.encode("/Lecture-Web/jsp/cookie/type03","utf-8"));
	c3.setPath("/Lecture-web/jsp/cookie/type03");
	
	Cookie c4 = new Cookie ("type04",URLEncoder.encode("/Lecture-Web/jsp/cookie/type04","utf-8"));
	c4.setPath("/Lecture-web/jsp/cookie/type04");
	
	
	response.addCookie(c);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 설정 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>
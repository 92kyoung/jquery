<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* session id 얻어오기 */
	String id = session.getId();
	/* session timeout 시간 (유효시간)  */
	int interval = session.getMaxInactiveInterval();
	
	//세션 유효시간 변경(2초)
	session.setMaxInactiveInterval(2);

	int interval2 = session.getMaxInactiveInterval();
	
	//마지막 접근시간 (리턴타입:long형)
	long last_time = session.getLastAccessedTime();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 ID(JSessionID) : <%= id %></h2>
	<h2> 기존 유효시간 : <%= interval %>초</h2>
	<h2> 변경 유효시간 : <%= interval2 %>초</h2>
	
	<h2>마지막 접근 시간 : <%= sdf.format(new Date(last_time)) %></h2>
	
</body>
</html>
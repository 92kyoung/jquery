<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과 화면</h2>
	<c:if test="${ param.id == 'admin'}">
		<%
			response.sendRedirect("admin.jsp");
		%>
	</c:if>
	<c:if test="${ param.id != 'admin' }">
		<%
			/*  sendRedirect는 요청을 재발생 시키기 때문에 requset, 공유 영역을 같이 쓸 수 없다
	    	    파라미터 방식만 사용가능하다.  */
			response.sendRedirect("user.jsp?id="+request.getParameter("id"));
		%>
	</c:if>
	끝!!
</body>
</html>
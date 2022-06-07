<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${ param.type == 'S'}">
			<h2>반갑습니다. 관리자님</h2>
		</c:when>
		<c:when test="${ param.type == 'U'}">  <!-- 파람 타입이 s가 아니면서 -->
			<h2>반갑습니다. 일반사용자님</h2>
		</c:when>
		<c:otherwise>  <!-- 파람 타입이 s,u가 아닌 모든  -->
			<h2>type 파라미터가 전송되지않았거나 파라미터의 값이 잘못되었습니다.</h2>
		</c:otherwise>
	</c:choose>
</body>
</html>
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
	<%-- http:localhost:9999/Lecture-web/jsp/jstl/core/exam04.jsp?type=S
										OR
	     http:localhost:9999/Lecture-web/jsp/jstl/core/exam04.jsp?type=U
	 --%>
	 
	 <c:if test="${empty param.type}"> <!-- 날라오는 파라미터 값이 없을 때 -->
	 <h2>뉘신지..?</h2>
	 </c:if>
	 
	 <c:if test="${param.type == 'S'}">
	 <h2>반값습니다. 관리자님</h2>
	 </c:if>
	 
	 <c:if test="${param.type eq 'U'}">
	 <h2>반값습니다. 일반사용자님</h2>
	 </c:if>
	 
	 
	 
</body>
</html>






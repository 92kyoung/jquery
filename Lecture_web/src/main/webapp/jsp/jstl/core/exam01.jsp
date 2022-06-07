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
	1 값을 가지는 변수 cnt 선언 (page 공유 영역) <br>
	<c:set var="cnt" value="1" />
	공유 영역에 설정된 cnt 변수 : ${ cnt }  <br>
	

<!-- 자바코드 쓴 버전 (불편! 나는 자바코드 안쓰고 싶어 => jstl쓰자 -->
 
<%-- 
    <%
		int cnt = Integer.parseInt((String)pageContext.getAttribute("cnt"));
		++cnt;
		pageContext.setAttribute("cnt", cnt);
	%>
 --%>
 

<%-- 	
    <c:set var="cnt" value="${cnt+1}" />
	cnt에 1 증가한 값 : ${ cnt }<br> 

--%>
	
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" /> 
	
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
	cnt 변수 삭제 <br>
	<c:remove var="cnt" scope="page"/>
	cnt : ${pageScope.cnt} <br>
	reqeust cnt : ${requestScope.cnt} <br> 
	
</body>
</html>


<%--
		JSP				EL					JSTL
	--------------------------------------------------------
		pageContext		pageScope			page
		request			requestScope		request
		session			sessionScope		session
		application		applicationScope	application
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fn' uri="http://java.sun.com/jsp/jstl/functions" %>

<%

	String [] names = {"홍길동","강길동","구길동","박길동"};
	
	pageContext.setAttribute("names",names);
	pageContext.setAttribute("length", names.length-1);



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름 배열의 개수 : ${ fn:length(names) } <br>
	<c:forEach begin="0" end="${ fn:length(names)-1 }" var="i">
		${ names[i] }
		<c:if test="${ i ne length }">
			,
		</c:if>
	</c:forEach>
	
	
	<br>
	
	<!-- 1. varStatus(for문의 정보를 저장하고 있음) 뒤에는 아무 변수 명이나 넣어도된다. -->
	<c:forEach items="${names }" var="name" varStatus="loop">

		<%-- ${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count } <br> --%>
		<c:if test="${ not loop.first }">
			,
		</c:if>
		${name }
	</c:forEach>
	
	
	
	<br>
	
    <!-- 2. -->
    <c:forEach begin="0" end="${ length }" var="i">
		<%-- <c:if test="${ i ne 0 }">
			,
		</c:if> --%>
		${ names[i] }
		<c:if test="${ i ne length }">
			,
		</c:if>
	</c:forEach>


    <br>
    
    <!-- 3. -->
    <c:set var="cnt" value="1" />
	<c:forEach items="${ names }" var="name">
		<c:if test="${ cnt ne 1 }">
			,
		</c:if>
		${ name }
		<c:set var="cnt" value = "${ cnt+1 }" /> <!-- cnt ++ -->
	</c:forEach>
	<c:remove var="cnt" scope="page" /> 

    
    
    <br>


	<h2>1~10 사이의 정수 출력</h2>
	<c:forEach var="i" begin="1" end="10">
		${i}
	</c:forEach>
	
	
	<br>
	
	년도 선택 : 
	
	<select>
		<c:forEach begin="1970" end="2022" step="10" var="year">
			<option> ${ year }</option>
		</c:forEach>	
	</select>
	
	<!-- step 속성은 숫자 n 만큼 증가 하게 만든다 . -->
	
</body>
</html>
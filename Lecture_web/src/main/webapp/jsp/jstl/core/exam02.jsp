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
 	value 속성만 지정 : <c:out value="hello JSTL..." /><br>
	el msg : ${ msg }<br> <!-- var이 msg인 변수가 없으므로 empty 상태 -->
	
	<!-- var 변수를 못찾을 때 default 값으로 대체할 수 있음  -->
	msg : <c:out value="${ msg }" default="msg변수 찾을 수 없음" /><br>
	
	
	escapeXml = true 설정<br>
	<c:set var="msg" value="<em>hello...</em><hr>"/>
	<c:out value="${ msg }" /> <br>
	escapeXml = false 설정<br>
	<c:out value="${ msg }" escapeXml="false" /> 
	
	
	 ${ msg } 
</body>
</html>












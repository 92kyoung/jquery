<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- sendRedirect는 요청을 재발생 시키기 때문에 requset, 공유 영역을 같이 쓸 수 없다
	     파라미터 방식만 사용가능하다. 
-->
 	<h2> ${ param.id }님 환영합니다</h2>
</body>
</html>
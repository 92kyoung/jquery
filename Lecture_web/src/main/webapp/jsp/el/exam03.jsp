<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
     /* 객체 등록 : 공유영역.setAttribute("이름",값);
		객체 조회 : 
 		jsp 공유영역 4가지 : pageContext , request , session , application  
	 */
	 
	pageContext.setAttribute("msg","pageContext에 등록완료");

	// "id"라는 이름으로 "홍길동" 객체 등록 ( pageContext )
	pageContext.setAttribute("id","홍길동");
	
	request.setAttribute("msg", "request 영역에 등록완료");
	
	/* el 식으로 msg의 length를 출력하려면, length를 따로 등록시켜야 한다. */
	pageContext.setAttribute("legth","request 영역에 등록완료".length());
%>    
   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- el 공유영역 4가지:
		pageScope , requestScope , sessionScope , applicatonScope
 -->	
	msg : ${ msg } <br> <!-- 먼저 'pageScope' el 공유영역에 msg 객체가 있는지 조회한다. -->
	
	msg : <%= pageContext.getAttribute("msg") %> <br> <!-- el 보다 복잡..  -->
	
	el msg : ${pageScope.msg} <br> 
	el msg : ${msg} <br> <!-- pageScope부터 조회하므로 'pageScope.'은 생락할 수 있다 -->
	el id : ${id} <br>
	
	el request msg : ${ requestScope.msg } <br> <!-- request에 있는 msg 출력 -->
	request msg length : <%= ((String)request.getAttribute("msg")).length() %><br>
	
	
	el length: ${length} <br> 
</body>
</html>
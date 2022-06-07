<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO b = new BoardVO(); /* b 라는 이름의 BoradVO 객체 생성 */

	b.setNo(1);
	b.setTitle("테스트");  //b(1,테스트)
	
	// pageContext영역에 객체 등록
	// 이름 : board  값 : 생성된 BoardVO 객체
	pageContext.setAttribute("board", b);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.getNo() %><br>
	no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	no : ${ board.no }<br>
	
	title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	title : ${ board.title }<br>
	
	aaa : ${ board.aaa }
	<!-- aaa : $ {board.aaa} <br>   but exam05 에서는 에러가 안난다.
	  자바 빈즈 클래스에 aaa getter 메소드 가 없으므로 500에러가 난다. 
	  객체. 이름 : '.이름' 은 객체의 getter 메소드를 의미한다. 
	-->
</body>
</html>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<hr>
requset 공유 영역 phone : ${ phone } <br>
넘어온 파라미터 정보 <br>
name : ${ param.name } <br>
<!-- 넣을 공통 코드만 작성 -->
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>

<hr>
<!-- set은 스코프를 설정안하면 page로 설정되서 공유 영역에 안올라온다.  -->
<c:set var="phone" value="010-8888-9999" scope="request"/>

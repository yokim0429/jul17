<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board JSP</title>
<link rel="stylesheet" href="./css/board.css">
</head>
<body>
	<h2>Board</h2>
	<img alt="" src="./img/IaxBono.png" height="100px">
	<a href="./">index로 가기</a>
	<br>
	
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>쓴날짜</th>
			<th>좋아요</th>
		</tr>
		
		<c:forEach items="${list}" var="row">
			<!-- on-click 자바스크립트 페이지 이동, URL?파라미터=값 -->
			<tr onclick="location.href='./detail?bno=${row.bno}' ">
				<td>${row.bno}</td>
				<td>${row.btitle}</td>
				<td>${row.bwrite}</td>
				<td>${row.bdate}</td>
				<td>${row.blike}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>
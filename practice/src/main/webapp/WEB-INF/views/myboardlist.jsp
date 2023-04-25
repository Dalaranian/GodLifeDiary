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
	<table border="1">
		<col width="50"><col width="100"><col width="200"><col width="100">
		<tr>
			<th>MYNO</th>
			<th>MYNAME</th>
			<th>MYTITLE</th>
			<th>MYDATE</th>
		</tr>
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="4">------작성된 글이 존재하지 않습니다------</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.myno }</td>
						<td>${dto.myname }</td>
						<td><a href="/myboard/detail?myno=${dto.myno }">${dto.mytitle }</a></td>
						<td>${dto.mydate }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="글작성" onclick="location.href='/myboard/insertform'">
			</td>
		</tr>
	</table>
</body>
</html>
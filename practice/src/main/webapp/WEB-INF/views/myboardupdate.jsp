<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/myboard/update" method="post">
		<input type="hidden" name="myno" value="${dto.myno }">
		<table border="1">
			<tr>
				<th>MYNAME</th>
				<td>${dto.myname }</td>
			</tr>
			<tr>
				<th>MYTITLE</th>
				<td><input type="text" name="mytitle" value="${dto.mytitle }"></td>
			</tr>
			<tr>
				<th>MYCONTENT</th>
				<td><textarea rows="10" cols="40" name="mycontent">${dto.mycontent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정">
					<input type="button" value="취소" onclick="location.href='/myboard/detail?myno=${dto.myno}'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
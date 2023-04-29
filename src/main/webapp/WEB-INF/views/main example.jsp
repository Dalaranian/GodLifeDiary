<!-- challenges.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Challenges</title>
</head>
<body>
    <h1>All Challenges</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <!-- ... -->
        </tr>
        <!-- 조회된 엔티티들을 출력 -->
        <c:forEach var="challenge" items="${challenges}">
            <tr>
                <td><c:out value="${challenge.id}" /></td>
                <td><c:out value="${challenge.title}" /></td>
                <td><c:out value="${challenge.description}" /></td>
                <!-- ... -->
            </tr>
        </c:forEach>
    </table>
</body>
</html>

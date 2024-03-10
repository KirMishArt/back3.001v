<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Persons</title>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Second Name</th>
        <th>Tel</th>
        <th>Email</th>
        <th>Birth</th>
        <th>Gender</th>
        <th>Favo Lang</th>
        <th>Bio</th>
    </tr>
    <c:forEach var="person" items="${persons}">
        <tr>
            <td>${person.id}</td>
            <td>${person.name}</td>
            <td>${person.surname}</td>
            <td>${person.second_name}</td>
            <td>${person.tel}</td>
            <td>${person.email}</td>
            <td>${person.birth}</td>
            <td>${person.gender}</td>
            <td>${person.fovoLang}</td>
            <td>${person.bio}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

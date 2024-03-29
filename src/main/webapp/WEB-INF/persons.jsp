<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Persons</title>
</head>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 0;
        background-color: #080710;
        font-family: Arial, sans-serif;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        color: #333;
        font-size: 16px;
        margin: 20px 0;
        background-color: #fff;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>
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

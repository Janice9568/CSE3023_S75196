
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="jakarta.tags.sql" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>JSTL SQL TAG</title>
</head>
<body>
<h2>User List (Fetch directly using JSTL SQL)</h2>

<sql:setDataSource var="dbConnection"
                   driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/webappdevlab5"
                   user="root"
                   password="admin" />

<sql:query dataSource="${dbConnection}" var="result">
    SELECT * FROM users;
</sql:query>

<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr style="background-color: lightgray; ">
            <th>ID</th>
            <th>Username</th>
            <th>Roles</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.username}"/></td>
                <td><c:out value="${row.roles}"/></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>

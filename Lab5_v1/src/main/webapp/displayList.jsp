
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="border:1px; cellpadding:8px;">
    <thead>
        <tr style="background-color: lightgrey;">
            <th>No.</th>
            <th>Name</th>
            <th>Matric No.</th>
        </tr>
    </thead>

    <tbody>
        <c:forEach items="${stdList}" var="student" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${student.name}</td>
                <td>${student.matricNo}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<html>
<head>
    <title>Payroll View</title>
</head>
<body>
<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Basic Salary</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${employeeList}" var="employee" >
            <tr>
                <td>${employee.empId}</td>
                <td>${employee.name}</td>
                <td>${employee.department}</td>
                <td>${employee.basicSalary}</td>
                <td>
                    <c:choose>
                        <c:when test="${employee.basicSalary >= 3000}">
                            <span class="senior">Senior</span>
                        </c:when>
                        <c:otherwise>
                            <span class="junior">Junior</span>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>

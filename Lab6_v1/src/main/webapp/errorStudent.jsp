<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error page</title>
</head>
<body>
<h1 style="color: red;">Create and Retrieve Records Error</h1>

<p style="font-weight: bold; color: darkred;">
    <jsp:expression>exception.getMessage()</jsp:expression>
</p>

<br>
<a href="insertStudent.jsp">Go Back to Registration Form</a>
</body>
</html>

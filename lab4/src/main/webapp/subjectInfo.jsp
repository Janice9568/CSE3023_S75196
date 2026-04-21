<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 19-May-26
  Time: 7:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Subject Info</title>
</head>
<body>
<p>Code: <%= request.getParameter("code")%></p>
<p>Subject: <%= request.getParameter("subject")%></p>
<p>Credit: <%= request.getParameter("credit")%></p>
</body>
</html>

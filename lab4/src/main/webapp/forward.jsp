<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 19-May-26
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>using jsp:forward to display user info</h1>
</body>
</html>

<jsp:forward page="forwardInfo.jsp">
    <jsp:param name="uname" value="Soo" />
    <jsp:param name="email" value="ysy@gmail.com"/>
    <jsp:param name="nationality" value="malaysia"/>
    <jsp:param name="background" value="lecturer"/>
</jsp:forward>
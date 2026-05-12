<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Dashboard</title>
</head>
<body>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp?msg=Please log in first.");
    } else {
%>
<h1>Welcome to the Main Page</h1>
<table border="1" cellpadding="10" style="border-collapse: collapse;">
    <tr style="background-color: #f2f2f2;"><th colspan="2">Logged In User Profile Details</th></tr>
    <tr><td><strong>Username:</strong></td><td><%= session.getAttribute("username") %></td></tr>
    <tr><td><strong>First Name:</strong></td><td><%= session.getAttribute("firstname") %></td></tr>
    <tr><td><strong>Last Name:</strong></td><td><%= session.getAttribute("lastname") %></td></tr>
</table>
<br>
<a href="logout.jsp">Log Out Safely</a>
<% } %>
</body>
</html>
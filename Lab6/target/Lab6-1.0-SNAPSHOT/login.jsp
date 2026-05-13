
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doLogin.jsp" method="post">
    <fieldset style="width: 300px;">
        <legend>User Login</legend>

        <% if(request.getParameter("msg") != null) { %>
        <p style="color: red; font-weight: bold;"><%= request.getParameter("msg") %></p>
        <% } %>

        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </fieldset>
</form>
</body>
</html>

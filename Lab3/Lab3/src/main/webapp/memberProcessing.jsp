<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Lab 3 - Task 1</title>
</head>
<body>
<h2>Passing data from main JSP page to another JSP page</h2>
<fieldset>
    <%
        String myIC = null;
        String myName = null;
        myIC = request.getParameter("my_icno");
        myName = request.getParameter("my_name");
    %>
    <p>Thank you for registering in this event!</p>
    <p>This is your details:</p>
    <p>IC No : <%= myIC %></p>
    <p>Name : <%= myName %></p>
</fieldset>

</body>
</html>

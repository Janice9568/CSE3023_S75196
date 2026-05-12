<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="lab6.com.UserDAO" %>
<%@ page import="lab6.com.UserDB" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="lab6.com.User" scope="request"/>

<jsp:setProperty name="user" property="*"/>

<%

    try {
        UserDAO userDAO = new UserDAO();
        int result = userDAO.insertUser(user);

        if (result > 0) {
            response.sendRedirect("login.jsp");
        } else {
            out.print("<p style='color:red;'>Registration failed. Please try again.</p>");
            out.print("<a href='insertUser.html'>Try Again</a>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.print("<p style='color:red;'>SQL Error: " + e.getMessage() + "</p>");
        out.print("<a href='insertUser.html'>Try Again</a>");
    } finally {
        UserDB.closeConnection();
    }

%>
</body>
</html>

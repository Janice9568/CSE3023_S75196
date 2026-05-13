<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 01-Jun-26
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="lab6.com.Marathon" %>
<%@ page import="lab6.com.MarathonDAO" %>
<%@ page import="lab6.com.Database" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="marathon" class="lab6.com.Marathon" scope="request" />
    <jsp:setProperty name="marathon" property="*" />

<%
    MarathonDAO mDAO = new MarathonDAO();

    int result = mDAO.addDetails(marathon);
    if(result > 0){
        out.print("<p>" + "record with IC no "+marathon.getIcno() + " have successfully recorded!" + "</p>");
        out.print("<p>" + "Details of record are: "+ "</p>");
        out.print("<p>" + "IC No.: " + marathon.getIcno() + "</p>");
        out.print("<p>" + "Name: " + marathon.getName() + "</p>");
        out.print("<p>" + "Category: " + marathon.getCategory() + "</p>");
    }

    Database.closeConnection();
%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 8:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Lab6-task1-insert records into mysql through jsp</h1>

<%
    int result;

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3203", "root", "admin");

    String sql = "INSERT INTO FirstTable VALUES (?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    String name = "Welcome to access Mysql database with jsp";
    pstmt.setString(1, name);

    result = pstmt.executeUpdate();

    if (result > 0){
        out.println("Close database connection");
    }

    pstmt.close();
    conn.close();
%>
</body>
</html>

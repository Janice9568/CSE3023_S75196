<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="author" class="lab6.com.Author" scope="request" />

<h1>lab6-task2-create and retrieve records vis jsp</h1>

<jsp:setProperty name="author" property="*"/>

<%
    int result;

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3203", "root", "admin");

    String sql = "INSERT INTO Author (authno, name, address, city, state, zip) VALUES (?,?,?,?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    pstmt.setString(1, author.getAuthorno());
    pstmt.setString(2, author.getName());
    pstmt.setString(3, author.getAddress());
    pstmt.setString(4, author.getCity());
    pstmt.setString(5, author.getState());
    pstmt.setString(6, author.getZip());

    result = pstmt.executeUpdate();

    if(result > 0){
        out.println("<p>Author No:"+ author.getAuthorno()+"</p>");
        out.println("<p>Name:"+ author.getName()+"</p>");
        out.println("<p>Address:"+ author.getAddress()+"</p>");
        out.println("<p>City:"+ author.getCity()+"</p>");
        out.println("<p>State:"+ author.getState()+"</p>");
        out.println("<p>Zip:"+ author.getZip()+"</p>");
    }

    pstmt.close();
    conn.close();
%>

<a href="insertAuthor.jsp">Add new author info</a>
</body>
</html>

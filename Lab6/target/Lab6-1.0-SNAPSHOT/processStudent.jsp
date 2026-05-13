<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%@page errorPage="errorStudent.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="student" class="lab6.com.Student" scope="request" />

<jsp:setProperty name="student" property="*"/>

<%
    int result;

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3203", "root", "admin");

    String sql = "INSERT INTO student (stuno, name, program) VALUES (?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    pstmt.setString(1, student.getStuno());
    pstmt.setString(2, student.getName());
    pstmt.setString(3, student.getProgram());

    result = pstmt.executeUpdate();

    if(result > 0){
        out.println("<p>Student No.: "+student.getStuno()+"</p>");
        out.println("<p>Name: "+student.getName()+"</p>");
        out.println("<p>Program: "+student.getProgram()+"</p>");
    }

    pstmt.close();
    conn.close();
%>
</body>
</html>

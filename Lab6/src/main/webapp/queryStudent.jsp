<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 01-Jun-26
  Time: 12:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border-collapse: collapse;
        }

        td,th{
            border: 1px solid #999;
            padding: 0.5rem;
            text-align:left;
        }

        th{
            background: gold;
        }
    </style>
</head>
<body>
<h1>retrieve record via jsp</h1>

<%
    out.print("<table>");
    out.print("<thead>");
        out.print("<tr>");
            out.print("<th>Student No</th>");
            out.print("<th>Name</th>");
            out.print("<th>Program</th>");
        out.print("</tr>");
    out.print("</thead>");
    out.print("<tbody>");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3203", "root", "admin");

    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM student";
    ResultSet rs = stmt.executeQuery(sql);


    while(rs.next()){
        out.print("<tr>");
            out.print("<td width=\"20%\">"+ rs.getString(1) +"</td>");
            out.print("<td width=\"40%\">"+ rs.getString(2) +"</td>");
            out.print("<td width=\"40%\">"+ rs.getString(3) +"</td>");
        out.print("</tr>");
    }

    stmt.close();
    conn.close();

    out.print("</tbody>");
    out.print("</table");
%>

</body>
</html>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Health Information</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
    <%@ include file="header.jsp" %>

    <div class="card">
        <h2 class="form-title">BMI Categories</h2>
        <%
            ArrayList<String> categories = new ArrayList<>();
            categories.add("Underweight (< 18.5)");
            categories.add("Normal Weight (18.5 - 25.0)");
            categories.add("Overweight (> 25.0)");
        %>
        <table border="1" style="width: 100%; border-collapse: collapse; margin-top: 10px;">
            <tr style="background-color: #f2f2f2;">
                <th style="padding: 10px; text-align: left;">Category Range</th>
            </tr>
            <% for(String cat : categories) { %>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= cat %></td>
            </tr>
            <% } %>
        </table>
    </div>

    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
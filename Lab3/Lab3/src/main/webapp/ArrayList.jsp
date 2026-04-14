
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <title>Use Java ArrayList</title>
    <style>
        p { color: #5533ff; font-weight: 500; margin: 5px 0; }
        h1 { font-family: serif; }
        footer { margin-top: 20px; color: black; font-size: 0.9em; }
    </style>
</head>
<body>
<h1>Use JSP Page Directive</h1>
<%
    ArrayList<String> studentList = new ArrayList<String>();
    studentList.add(0, "Mohamad Azam");
    studentList.add(1, "Peter Chong");
    studentList.add(2, "Rahimah Mansor");
    studentList.add(3, "Sri Devi");
    studentList.add(4, "Ng Hue Ween");
    studentList.add(5, "S. Nagarajan");

    // This MUST stay inside the <% %> tags
out.println("<p>The number of records in Arraylist is " + studentList.size() + "</p>");
%>

<%-- The loop is its own separate block --%>
<% for (int i=0; i < studentList.size(); i++) { %>
<p>Record <%= (i + 1) %> is <%= studentList.get(i) %></p>
<% } %>

<br>
<footer>&copy;2026-Soo Yan</footer>
</body>
</html>
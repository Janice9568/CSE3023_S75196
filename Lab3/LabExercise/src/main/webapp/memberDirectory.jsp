<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
  <style>table, th, td { border: 1px solid black; border-collapse: collapse; padding: 8px; }</style>
</head>
<body>
<%@ include file="header.jsp" %>
<h2>Committee Member Directory</h2>
<table>
  <%
    ArrayList<String> members = (ArrayList<String>) application.getAttribute("clubMembers");
    for(int i=0; i < members.size(); i++) {
  %>
  <tr>
    <td><%= (i+1) %></td>
    <td><%= members.get(i) %></td>
  </tr>
  <% } %>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>

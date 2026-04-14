<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Output from Array</title>
  <style>
    body { font-family: sans-serif; margin: 40px; }
    table {
      border-collapse: collapse;
      width: 60%;
      margin-top: 20px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    th {
      background-color: #e9d5a1; /* That gold/sand color from the image */
      padding: 12px;
      border: 1px solid #ddd;
    }
    td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ddd;
    }
    tr:nth-child(even) { background-color: #f9f9f9; }
    tr:hover { background-color: #f1f1f1; }
    .footer { margin-top: 20px; font-size: 0.8em; color: #555; }
  </style>
</head>
<body>

<h2>Read Java array and populate it into HTML table.</h2>

<%
  // The data based on Table 3.1
  int[][] salesData = {
          {2500, 2100, 2200},
          {2000, 1900, 2400},
          {1800, 2200, 2450}
  };

  String[] salesmen = {"Salesman 1", "Salesman 2", "Salesman 3"};
%>

<table>
  <thead>
  <tr>
    <th>Salesman</th>
    <th>Jan</th>
    <th>Feb</th>
    <th>Mac</th> </tr>
  </thead>
  <tbody>
  <% for (int i = 0; i < salesData.length; i++) { %>
  <tr>
    <td><%= salesmen[i] %></td>
    <td><%= salesData[i][0] %></td>
    <td><%= salesData[i][1] %></td>
    <td><%= salesData[i][2] %></td>
  </tr>
  <% } %>
  </tbody>
</table>

<div class="footer">
  &copy; 2026-SooYan
</div>

</body>
</html>
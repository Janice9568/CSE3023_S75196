<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>JSP Calculator</title>
</head>
<body bgcolor="#87CEEB" text="black"> <center>
  <h2>Basic calculator program in JSP</h2>

  <%-- 1. Wrap your Java logic in a scriptlet --%>
  <%
    String num1 = "0", num2 = "0";
    int result = 0;
    String op = "+";

    if (request.getParameter("op") != null) {
      op = request.getParameter("op");
      char opchar = op.charAt(0);
      num1 = request.getParameter("operand1");
      num2 = request.getParameter("operand2");

      try {
        int n1 = Integer.parseInt(num1);
        int n2 = Integer.parseInt(num2);

        switch(opchar){
          case '0': result = n1 + n2; break;
          case '1': result = n1 - n2; break;
          case '2': result = n1 * n2; break;
          case '3': result = (n2 != 0) ? n1 / n2 : 0; break;
          case '4': result = n1 % n2; break;
        }
      } catch (NumberFormatException e) {
        // Handle cases where input is not a number
      }
    }
  %>

  <form method="get" name="f1">
    <input type="text" size="20" name="operand1" value="<%= num1 %>" />
    <select name="op" size="1">
      <option value="0" <%= "0".equals(op) ? "selected" : "" %>>+</option>
      <option value="1" <%= "1".equals(op) ? "selected" : "" %>>-</option>
      <option value="2" <%= "2".equals(op) ? "selected" : "" %>>*</option>
      <option value="3" <%= "3".equals(op) ? "selected" : "" %>>/</option>
      <option value="4" <%= "4".equals(op) ? "selected" : "" %>>%</option>
    </select>
    <input type="text" size="20" name="operand2" value="<%= num2 %>" />
    <br/><br/>
    <input type="submit" value="Calculate"/>
  </form>

  <%-- 2. Display the result using an expression tag --%>
  <% if (request.getParameter("op") != null) { %>
  <h3>Result: <%= result %></h3>
  <% } %>

</center>
</body>
</html>
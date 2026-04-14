
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<%@ include file="header.jsp" %>
<h2>Membership Fee Calculator</h2>
<form method="get">
    Number of Activities: <input type="number" name="count">
    <input type="submit" value="Calculate">
</form>

<%
    String countStr = request.getParameter("count");
    if(countStr != null) {
        int count = Integer.parseInt(countStr);
        double total = count * 10.0;
%>
<h3>Total Fee: RM <%= String.format("%.2f", total) %></h3>
<% } %>

<%@ include file="footer.jsp" %>
</body>
</html>

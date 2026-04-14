
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<body>
<%@ include file="header.jsp" %>
<h2>Registration Successful!</h2>
<p><strong>Name:</strong> <%= request.getParameter("stdName") %></p>
<p><strong>Matric:</strong> <%= request.getParameter("stdMatric") %></p>
<p><strong>Club Joined:</strong> <%= request.getParameter("stdClub") %></p>
<%
    String newName = request.getParameter("stdName");
    ArrayList<String> list = (ArrayList<String>) application.getAttribute("clubMembers");

    if (newName != null && list != null) {
        list.add(newName);
    }
%>
<%@ include file="footer.jsp" %>
</body>
</html>
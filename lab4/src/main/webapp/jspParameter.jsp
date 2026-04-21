<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 18-May-26
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Use JSP Standard Action</title>
</head>
<body>
<h1>Using jsp:include and jsp:param to display information</h1>
</body>
</html>

<%
    String sCode = "CSE3023";
    String sSubject = "Web-based Application Development";
    String sCredit = "3(2+1)";
%>

<jsp:include page="subjectInfo.jsp" flush="true">
    <jsp:param name="code" value="<%= sCode %>" />
    <jsp:param name="subject" value="<%= sSubject %>" />
    <jsp:param name="credit" value="<%= sCredit%>" />
</jsp:include>

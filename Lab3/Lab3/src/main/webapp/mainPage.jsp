<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Main Page - Include Directive</title>
    <style>
        .content {
            color: red;
            font-family: Arial, sans-serif;
            padding: 20px;
            line-height: 1.4;
        }
    </style>
</head>
<body>

<%-- Step 6: Include the header --%>
<%@ include file="headerPage.jsp" %>

<div class="content">
    Java Server Page (JSP) is a technology for controlling the content
    or appearance of Web pages through the use of servlets, small
    programs that are specified in the Web page and run on the Web server
    to modify the Web page before it is sent to the user who requested it.
</div>

<%-- Step 6: Include the footer --%>
<%@ include file="footerPage.jsp" %>

</body>
</html>
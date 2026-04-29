
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
<head>
    <title>Jstl core tag</title>
</head>
<body>
<h2>
  jstl conditional test
</h2>
<c:set var="score" value="85" />

<p>Student Score: <c:out value="${score}" /> marks.</p>

<c:if test="${score >= 50}">
  <p style="color: green;"><strong>Status: Pass!</strong></p>
</c:if>

<c:if test="${score < 50}">
  <p style="color: red;"><strong>Status: Fail. try again</strong></p>
</c:if>


</body>
</html>

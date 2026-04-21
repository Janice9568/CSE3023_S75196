<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Using JSP Standard Action (Forward)</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<h1>Using jsp:forward to display user information</h1>
</body>
</html>

<jsp:forward page="forwardInfo.jsp">
    <jsp:param name="uname" value="Soo Yan" />
    <jsp:param name="email" value="s75196@umt.edu.my" />
    <jsp:param name="nationality" value="Malaysia" />
    <jsp:param name="background" value="Student" />
</jsp:forward>

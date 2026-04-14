
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Register Club</title></head>
<body>
<%@ include file="header.jsp" %>
<h2>Student Registration Form</h2>
<form action="processRegistration.jsp" method="post">
  Name: <input type="text" name="stdName" required><br><br>
  Matric: <input type="text" name="stdMatric" required><br><br>
  Club:
  <select name="stdClub">
    <option value="IT Club">IT Club</option>
    <option value="Robotics">Robotics</option>
    <option value="Esports">Esports</option>
  </select><br><br>
  <input type="submit" value="Register">
</form>
<%@ include file="footer.jsp" %>
</body>
</html>
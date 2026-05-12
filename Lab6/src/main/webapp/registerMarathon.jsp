<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 01-Jun-26
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="processMarathon.jsp" method="post">
    <fieldset>
        <legend>registerMarathon</legend>
        IC No: <input type="text" name="icno" placeholder="E.g.: 921110-10-2514"><br><br>
        Name: <input type="text" name="name" placeholder="Enter your name"><br><br>
        Category:
        <select name="category">
            <option value="5km">5 KM</option>
            <option value="7km">7 KM</option>
            <option value="10km">10 KM</option>
        </select>
        <br><br>
        <button type="submit">Submit</button><button type="reset">Cancel</button>
    </fieldset>
</form>
</body>
</html>

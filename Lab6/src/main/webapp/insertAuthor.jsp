<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Author</title>
</head>
<body>
<form action="processAuthor.jsp" method="post">
    <fieldset>
        <legend>Author Registration</legend>

        Author No: <input type="text" name="authorno" placeholder="E.g.: UKXXXX"><br><br>
        Name: <input type="text" name="name" placeholder="Enter your name"><br><br>
        Address: <input type="text" name="address" placeholder="Enter your address"><br><br>
        City: <input type="text" name="city" placeholder="Enter your city"><br><br>
        State: <input type="text" name="state" placeholder="Enter your state"><br><br>
        Zip: <input type="text" name="zip" placeholder="Enter your zip"><br><br>

        <button type="submit">Submit</button>
        <button type="button">Cancel</button>

    </fieldset>


</form>

<footer>
    <p>&copy; 2026-Yap</p>
</footer>
</body>
</html>

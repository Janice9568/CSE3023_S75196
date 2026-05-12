<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 30-May-26
  Time: 5:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Student Form</title>
</head>
<body>
    <form action="processStudent.jsp" method="post">
        <fieldset>
            <legend>Student Registration</legend>
            Student No: <input type="text" name="stuno" placeholder="E.g.: UKXXXX"><br><br>
            Name: <input type="text" name="name" placeholder="Enter your name"><br><br>
            Program:
            <select name="program">
                <option value="SE">BSc. Soft. Eng.</option>
                <option value="IM">BSc. with IM</option>
                <option value="Networking">BSc. in Networking</option>
                <option value="Robotics">BSc. in Robotics</option>
            </select>

            <br><br>
            <button type="submit">Submit</button>
            <button type="button">Cancel</button>
        </fieldset>
    </form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>member processing</title>
</head>
<body>
<h1>Passing data from main JSP page to other JSP page</h1>
<form id="memberFrm" action="memberProcessing.jsp" method="post"
      onsubmit="return checkICNo()">
    <fieldset>
        <legend>Member Registration</legend>
        <label for="icno">IC. No</label>
        <input type="text" id="icno" name="my_icno" size="15"
               placeholder="E.g. 930123034567"><br/><br/>
        <label for="icno">Name</label>
        <input type="text" id="name" name="my_name" size="45"
               placeholder="Key-in your name"><br/>
        <p>
            <input type="submit" id="btnSubmit" value="Submit">
            <input type="reset" id="btnCancel" value="Cancel">
        </p>
    </fieldset>
</form>
&copy;2026-SooYan
</body>
</html>

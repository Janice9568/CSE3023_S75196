
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate Result</title>

</head>
<body>
<h2>Calculate Results</h2>

<jsp:useBean id="calc" class="com.lab.bean.CalculatorBean" />

<jsp:setProperty name="calc" property="*"/>

<p>
    The sum of
    <jsp:getProperty name="calc" property="num1"/> and
    <jsp:getProperty name="calc" property="num2"/> is:
    <strong><jsp:getProperty name="calc" property="sum"/></strong>
</p>
<a href="calculator.html">Calculate again</a>
</body>
</html>

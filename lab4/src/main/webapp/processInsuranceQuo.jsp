<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 19-May-26
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ic = request.getParameter("icNo");
    String name = request.getParameter("name");
    String coverageType = request.getParameter("coverageType");
    String ncdStr = request.getParameter("ncd");


    double price = 0;
    double ncd = 0;

    try{
        price = Double.parseDouble(request.getParameter("marketPrice"));
        ncd = Double.parseDouble(ncdStr);
    }catch(Exception e){
        price = 0;
        ncd = 0;
    }

    double coverageRate = 0;
    String coverageDisplay ="";
    if("comprehensive".equals(coverageType)) {
        coverageRate = 0.05;
        coverageDisplay = "Comprehensive";
    }else{
        coverageRate = 0.03;
        coverageDisplay = "Third-Party";
    }

    double insurance = price * coverageRate;

    double discount = insurance * ncd;
    double afterNCD = insurance - discount;

    double sst = afterNCD * 0.08;
    double finalAmount = afterNCD + sst;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>IC No:</p>
<p><%=ic%></p>
<p>Base Insurance:</p>
<p>RM <%=String.format("%.2f", insurance)%></p>

<p>NCD Discount:</p>
<p>RM <%=String.format("%.2f", discount)%></p>

<p>After NCD:</p>
<p>RM <%=String.format("%.2f", afterNCD)%></p>

<p>SST 8%:</p>
<p>RM <%=String.format("%.2f", sst)%></p>

<p>Final Insurance Amount:</p>
<p>RM <%=String.format("%.2f", finalAmount)%></p>
</body>
</html>

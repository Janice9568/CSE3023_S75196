<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 18-May-26
  Time: 7:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%!
    final double USD = 0.25;
    final double EURO = 0.21;
    final double JPY = 40;
    final double SDG = 0.32;

    public double calculateRate(int amount, String currency) {
        double currencyChange = 0.0;

        if (currency != null) {
            if (currency.equals("1")) {
                currencyChange = amount * USD;
            } else if (currency.equals("2")) {
                currencyChange = amount * EURO;
            } else if (currency.equals("3")) {
                currencyChange = amount * JPY;
            } else {
                currencyChange = amount * SDG;
            }
        }
        return currencyChange;
    }

%>

<%
    String amountRaw = request.getParameter("amount");
    String conversion = request.getParameter("conversion");

    int amount = 0;
    double exchangedCurrency = 0;
    try{
        if(amountRaw != null){
            amount = Integer.parseInt(amountRaw);
            exchangedCurrency = calculateRate(amount, conversion);
        }
    }catch(Exception e){
        amount = 0;
    }
    //double exchangedCurrency = calculateRate(amount, conversion);

    String currencyName ="";
    if("1".equals(conversion)){
        currencyName = "USD";
    }else if("2".equals(conversion)){
        currencyName = "EURO";
    }else if("3".equals(conversion)){
        currencyName = "JPY";
    }else{
        currencyName = "EURO";
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
<label>Amount in RM:</label>
<p>RM <%= amount %></p>

<label>Converted to <%= currencyName%>:</label>
<p><%= String.format("%.2f",exchangedCurrency) %></p>

<a href="currencyConversion.html">Back to Converter</a>
</html>

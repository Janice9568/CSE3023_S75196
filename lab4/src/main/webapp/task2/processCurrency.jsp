<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 21-Apr-26
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>processCurrency</title>
</head>
<body>
<%!
    // Define constant exchange rates
    final double USD = 0.25;
    final double EURO = 0.21;
    final double JPY = 40;
    final double SGD = 0.32;
    // Method to calculate conversion
    private double calculateRate(String currency, int amount) {
        double currencyChange = 0.0;
        if (currency != null) {
            if (currency.equals("1")) {
                currencyChange = amount * USD;
            } else if (currency.equals("2")) {
                currencyChange = amount * EURO;
            } else if (currency.equals("3")) {
                currencyChange = amount * JPY;
            } else {
                currencyChange = amount * SGD;
            }
        }
        return currencyChange;
    }
%>

<%
        String currencyType = request.getParameter("currencyType");
        String amountRaw = request.getParameter("amount");
        int amount = 0;
        double total = 0;
        try {if (amountRaw != null) {
            amount = Integer.parseInt(amountRaw);
            total = calculateRate(currencyType, amount);
        }
        } catch (Exception e) {
            amount = 0;
        }
// Determine currency name for display
    String currencyName = "N/A";
    if ("1".equals(currencyType)) currencyName = "USD";
    else if ("2".equals(currencyType)) currencyName = "EURO";
    else if ("3".equals(currencyType)) currencyName = "JPY";
    else if ("4".equals(currencyType)) currencyName = "SGD";
%>

<label>Amount in Ringgit Malaysia (RM):</label>
<p>RM <%= amount %></p>
<label>Converted to (<%= currencyName %>):</label>
<p><%= String.format("%.2f", total) %></p>


</body>
</html>

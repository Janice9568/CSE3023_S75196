<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 14-Apr-26
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car Loan Result</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .result-container { border: 1px solid #ccc; padding: 20px; width: 500px; }
        .blue-title { color: blue; font-weight: bold; font-size: 1.2em; margin-bottom: 15px; }
        p { font-weight: bold; }
        .footer { margin-top: 15px; font-size: 0.9em; }
    </style>
</head>
<body>
<h2>Perform Car Loan Calculation</h2>

<div class="result-container">
    <div class="blue-title">Details of car loan:</div>

    <%
        // Retrieve parameters
        String amountStr = request.getParameter("loanAmount");
        String periodStr = request.getParameter("loanPeriod");

        double loanAmount = 0;
        int period = 0;
        double totalLoan = 0;

        if (amountStr != null && periodStr != null) {
            loanAmount = Double.parseDouble(amountStr);
            period = Integer.parseInt(periodStr);

            // Calculation: Interest = Principal * Rate * Time
            // Rate is 4.5% (0.045) based on your lab output
            double interest = loanAmount * 0.045 * period;
            totalLoan = loanAmount + interest;
        }
    %>

    <p>Loan Request : <%= loanAmount %></p>
    <p>Period of payment : <%= period %></p>
    <p>Total Loan (+ interest) : <%= totalLoan %></p>
</div>

<div class="footer">&copy;2026-Soo Yan</div>
</body>
</html>
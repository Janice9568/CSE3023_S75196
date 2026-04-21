<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  // 1. Retrieve form data (Fixed to match your HTML 'name' attributes)
  String icno = request.getParameter("icNo");
  String name = request.getParameter("userName");
  String coverage = request.getParameter("coverageType");
  String ncdStr = request.getParameter("ncd");

  double price = 0;
  double ncdVal = 0;

  try {
    price = Double.parseDouble(request.getParameter("marketPrice"));
    ncdVal = Double.parseDouble(ncdStr);
  } catch (Exception e) {
    price = 0;
    ncdVal = 0;
  }

  // 2. Business Logic
  double rate = ("Comprehensive".equalsIgnoreCase(coverage)) ? 0.05 : 0.03;
  String coverageDisplay = ("Comprehensive".equalsIgnoreCase(coverage)) ? "Comprehensive" : "Third Party";

  // 3. Calculations
  double baseInsurance = price * rate;

  // CRITICAL FIX: Convert NCD percentage to decimal (e.g., 55 becomes 0.55)
  double ncdDiscount = baseInsurance * (ncdVal / 100.0);
  double afterNCD = baseInsurance - ncdDiscount;

  double sst = afterNCD * 0.08;
  double finalAmount = afterNCD + sst;
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Insurance Quotation Result</title>
  <link rel="stylesheet" href="../style.css">
  <style>
    /* Small styling adjustments to match Figure 4.21 precisely */
    .result-label { font-weight: bold; margin-top: 15px; display: block; color: #333; }
    .result-value { margin-bottom: 10px; display: block; color: #555; }
    .divider { border-bottom: 2px solid #666; margin: 15px 0; }
    .final-total { font-weight: 800; font-size: 1.2rem; }
  </style>
</head>
<body>

<div class="container">
  <h1>Insurance Quotation Result</h1>

  <div class="card">
    <span class="result-label">IC No:</span>
    <span class="result-value"><%= icno %></span>

    <span class="result-label">Name:</span>
    <span class="result-value"><%= name %></span>

    <span class="result-label">Market Price (RM):</span>
    <span class="result-value"><%= String.format("%.2f", price) %></span>

    <span class="result-label">Coverage Type:</span>
    <span class="result-value"><%= coverageDisplay %></span>

    <span class="result-label">NCD:</span>
    <span class="result-value"><%= (int)ncdVal %>%</span>

    <div class="divider"></div>

    <span class="result-label">Base Insurance:</span>
    <span class="result-value">RM <%= String.format("%.2f", baseInsurance) %></span>

    <span class="result-label">NCD Discount:</span>
    <span class="result-value">RM <%= String.format("%.2f", ncdDiscount) %></span>

    <span class="result-label">After NCD:</span>
    <span class="result-value">RM <%= String.format("%.2f", afterNCD) %></span>

    <span class="result-label">SST (8%):</span>
    <span class="result-value">RM <%= String.format("%.2f", sst) %></span>

    <span class="result-label">Final Insurance Amount:</span>
    <span class="result-value final-total">RM <%= String.format("%.2f", finalAmount) %></span>

    <div style="margin-top: 20px;">
      <button onclick="window.history.back()" class="btn">Back</button>
    </div>
  </div>
</div>

</body>
</html>
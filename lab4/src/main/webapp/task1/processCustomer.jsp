<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 21-Apr-26
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  // Fixed price
  final double price = 10.0;
// Retrieve form data
  String cust_no = request.getParameter("customerCode");
  String cust_type = request.getParameter("customerType");
  int quantity = 0;
  try {
    quantity = Integer.parseInt(request.getParameter("quantity"));
  } catch (Exception e) {
    quantity = 0;
  }

// Business logic
double total = 0;
String message = "";
if (cust_type.equals("1") && quantity > 100) {
message = "You're entitled to 10% discount";
total = quantity * price * 0.9;
} else if (cust_type.equals("2") && quantity > 100) {
message = "You're entitled to 25% discount";
total = quantity * price * 0.75;
} else {
message = "You're not entitled to any discount";
total = quantity * price;
}
// Display customer type
String custTypeDisplay = cust_type.equals("1") ?
"Normal Customer" : "Privilege Customer";
%>

</body>
</html>

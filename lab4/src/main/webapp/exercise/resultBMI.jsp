<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Result</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
    <%@ include file="header.jsp" %>

    <div class="card">
        <h2 class="form-title">Your Result</h2>
        <div class="result-box">
            <%
                double finalBmi = Double.parseDouble(request.getParameter("bmiVal"));
                String finalCat = request.getParameter("cat");
            %>
            <div class="result-group-flex">
                <label>Body Mass Index (BMI):</label>
                <p><%= String.format("%.2f", finalBmi) %></p>
            </div>
            <div class="result-group-flex">
                <label>Category:</label>
                <p><strong><%= finalCat %></strong></p>
            </div>
        </div>
        <button onclick="window.history.back()" class="btn btn-back">Back</button>
    </div>

    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI Calculator</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
    <%@ include file="header.jsp" %>

    <div class="card">
        <h2 class="form-title">BMI Calculator</h2>
        <form action="processBMI.jsp" method="post">
            <div class="form-group">
                <label>Weight (kg):</label>
                <input type="number" name="weight" step="0.1" required placeholder="e.g. 65.5">
            </div>
            <div class="form-group">
                <label>Height (m):</label>
                <input type="number" name="height" step="0.01" min="0.1" required placeholder="e.g. 1.70">
            </div>
            <div class="button-group">
                <button type="submit" class="btn btn-submit">Calculate BMI</button>
            </div>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Specification Configuration Editor</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a href="#" class="navbar-brand">🏎️ Premium Car Shop</a>
    </nav>
</header>
<div class="container col-md-5 mt-5">
    <div class="card shadow">
        <div class="card-body">
            <c:if test="${car != null}">
            <form action="update" method="post">
                </c:if>
                <c:if test="${car == null}">
                <form action="insert" method="post">
                    </c:if>

                    <h2 class="card-title text-center mb-4">
                        <c:if test="${car != null}">Edit Vehicle Parameters</c:if>
                        <c:if test="${car == null}">Register New Stock Vehicle</c:if>
                    </h2>

                    <c:if test="${car != null}">
                        <input type="hidden" name="id" value="<c:out value='${car.carId}' />" />
                    </c:if>

                    <div class="form-group">
                        <label>Brand Manufacturer</label>
                        <input type="text" value="<c:out value='${car.brand}' />" class="form-control" name="brand" required>
                    </div>

                    <div class="form-group">
                        <label>Model Name Designator</label>
                        <input type="text" value="<c:out value='${car.model}' />" class="form-control" name="model" required>
                    </div>

                    <div class="form-group">
                        <label>Engine Cylinders Configuration</label>
                        <input type="number" value="<c:out value='${car.cyclinder}' />" class="form-control" name="cyclinder" min="1" required>
                    </div>

                    <div class="form-group">
                        <label>Base MSRP Evaluation Value ($)</label>
                        <input type="number" step="0.01" value="<c:out value='${car.price}' />" class="form-control" name="price" required>
                    </div>

                    <button type="submit" class="btn btn-block btn-success shadow-sm">Commit Specifications to Database</button>
                    <a href="<%=request.getContextPath()%>/list" class="btn btn-block btn-secondary btn-sm">Abandone Changes</a>
                </form>
        </div>
    </div>
</div>
</body>
</html>
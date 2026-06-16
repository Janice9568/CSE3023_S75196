<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Car Price Management</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a href="#" class="navbar-brand">🏎️ Premium Car Shop</a>
    <ul class="navbar-nav">
      <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Show All Inventory</a></li>
    </ul>
  </nav>
</header>
<div class="container mt-4">
  <h3 class="text-center">Active Vehicle Pricelist Inventory</h3>
  <hr>
  <div class="text-left mb-3">
    <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Vehicle</a>
  </div>
  <table class="table table-striped table-bordered">
    <thead class="thead-dark">
    <tr>
      <th>Car ID</th>
      <th>Brand Manufacturer</th>
      <th>Model Name</th>
      <th>Engine Cylinders (V)</th>
      <th>Base Market MSRP</th>
      <th>Operations Control</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="car" items="${listCar}">
      <tr>
        <td><c:out value="${car.carId}" /></td>
        <td><c:out value="${car.brand}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.cyclinder}" /> Cyl</td>
        <td>$ <c:out value="${car.price}" /></td>
        <td>
          <a class="btn btn-sm btn-primary" href="edit?id=<c:out value='${car.carId}' />">Modify</a>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <a class="btn btn-sm btn-danger" onclick="return confirm('Confirm vehicle disposal removal?');" href="delete?id=<c:out value='${car.carId}' />">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
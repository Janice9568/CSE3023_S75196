package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/insert")
public class InsertProductServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product p = new Product(0, name, category, price, quantity);
        try {
            dao.insertProduct(p);
            response.sendRedirect("view");
        } catch (SQLException e) { throw new IOException(e); }
    }
}
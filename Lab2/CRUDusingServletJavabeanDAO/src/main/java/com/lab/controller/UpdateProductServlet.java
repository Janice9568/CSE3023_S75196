package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        try {
            Product existingProduct = dao.selectProduct(id);

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            out.println("<html><body>");
            out.println("<h2>Edit Product</h2>");
            out.println("<form action='update' method='post'>");

            out.println("<input type='hidden' name='id' value='" + existingProduct.getId() + "'>");

            out.println("Name: <input type='text' name='name' value='" + existingProduct.getName()
                    + "'><br><br>");
            out.println("Category: <input type='text' name='category' value='" + existingProduct.getCategory()
                    + "'><br><br>");
            out.println("Price: <input type='number' step='0.01' name='price' value='" + existingProduct.getPrice()
                    + "'><br><br>");
            out.println("Quantity: <input type='number' name='quantity' value='" + existingProduct.getQuantity()
                    + "'><br><br>");

            out.println("<input type='submit' value='Update Product'>");
            out.println("</form>");
            out.println("</body></html>");

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product updatedProduct = new Product(id, name, category, price, quantity);

        try {
            dao.updateProduct(updatedProduct);
            response.sendRedirect("view");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}
package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/view")
public class ViewProductServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            List<Product> list = dao.selectAllProducts();
            out.println("<html><body>");
            out.println("<h2>Product List</h2>");
            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th>" +
                    "<th>Qty</th><th>Actions</th></tr>");

            for (Product p : list) {
                out.println("<tr>");
                out.println("<td>" + p.getId() + "</td>");
                out.println("<td>" + p.getName() + "</td>");
                out.println("<td>" + p.getCategory() + "</td>");
                out.println("<td>" + p.getPrice() + "</td>");
                out.println("<td>" + p.getQuantity() + "</td>");

                out.println("<td>");
                out.println("<a href='update?id=" + p.getId() + "'>Edit</a> | ");
                out.println("<a href='delete?id=" + p.getId() +
                        "' onclick='return confirm(\"Are you sure?\")'>Delete</a>");
                out.println("</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("<br><a href='add_product.html'>Add New Product</a>");
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new IOException(e);
        }
    }
}
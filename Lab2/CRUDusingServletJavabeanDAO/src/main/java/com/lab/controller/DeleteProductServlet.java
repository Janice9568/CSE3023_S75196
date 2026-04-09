package com.lab.controller;

import com.lab.dao.ProductDAO;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet {
    private ProductDAO dao = new ProductDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            dao.deleteProduct(id);
            response.sendRedirect("view");
        } catch (SQLException e) { throw new IOException(e); }
    }
}
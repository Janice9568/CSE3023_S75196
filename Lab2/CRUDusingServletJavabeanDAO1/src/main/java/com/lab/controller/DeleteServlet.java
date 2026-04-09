package com.lab.controller;

import jakarta.servlet.annotation.WebServlet;
import com.lab.dao.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import jakarta.servlet.RequestDispatcher;
import java.sql.PreparedStatement;
import jakarta.servlet.annotation.*;

@WebServlet( "/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private UserDAO userDAO;
    public void init() {
        userDAO = new UserDAO();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id); // Panggil DAO
        response.sendRedirect("ViewServlet");
    }
}



package com.lab.controller;
import com.lab.dao.UserDAO;
import com.lab.model.User;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
    private UserDAO userDAO;
    public void init() {
        userDAO = new UserDAO();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String roles = request.getParameter("roles");
        User newUser = new User(username, password, roles);
        userDAO.insertUser(newUser); // Panggil DAO, bukan JDBC
        response.sendRedirect("ViewServlet");
    }
}
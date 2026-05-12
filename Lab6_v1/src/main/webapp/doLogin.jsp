<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lab6.com.User" %>
<%@ page import="lab6.com.UserDAO" %>
<%@ page import="lab6.com.UserDB" %>

<%
    String usernameIn = request.getParameter("username");
    String passwordIn = request.getParameter("password");

    UserDAO userDAO = new UserDAO();

    try {
        User validatedUser = userDAO.validateUser(usernameIn, passwordIn);

        if (validatedUser != null) {
            session.setAttribute("username", validatedUser.getUsername());
            session.setAttribute("firstname", validatedUser.getFname());
            session.setAttribute("lastname", validatedUser.getLname());

            response.sendRedirect("main.jsp");
        } else {
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("login.jsp?msg=System Database Error");
    } finally {
        UserDB.closeConnection();
    }
%>
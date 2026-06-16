package com.WEB;

import com.DAO.EmployeeDAO;
import com.Model.Employee;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("EServlet")
public class EServlet extends HttpServlet {
    EmployeeDAO employeeDAO = null;

    public void init(){
        employeeDAO = new EmployeeDAO();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        try{
            switch (action){
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertEmployee(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateEmployee(request, response);
                    break;
                case "/delete":
                    deleteEmployee(request, response);
                    break;
                default:
                    listEmployee(request, response);
                    break;
            }
        }catch(SQLException e){
            throw new ServletException(e);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("employeeForm.jsp");
        rd.forward(request, response);
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employeeList = new ArrayList<>();
        employeeList = employeeDAO.selectAllEmployees();
        request.setAttribute("employeeList", employeeList);
        RequestDispatcher rd = request.getRequestDispatcher("employeeList.jsp");
        rd.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeDAO.selectEmployee(id);
        request.setAttribute("employee", employee);
        RequestDispatcher rd = request.getRequestDispatcher("employeeForm.jsp");
        rd.forward(request, response);
    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        String name = request.getParameter("name");
        String email= request.getParameter("email");
        String password = request.getParameter("password");
        employeeDAO.insertEmployee(new Employee(name, email, password));
        response.sendRedirect("employeeList.jsp");
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email= request.getParameter("email");
        String password = request.getParameter("password");
        employeeDAO.updateEmployee(new Employee(id, name, email, password));
        response.sendRedirect("employeeList.jsp");
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        employeeDAO.deleteEmployee(id);
        response.sendRedirect("employeeList.jsp");
    }
}

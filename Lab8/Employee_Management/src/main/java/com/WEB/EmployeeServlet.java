package com.WEB;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;

import com.DAO.EmployeeDAO;
import com.Model.Employee;

import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/")
public class EmployeeServlet extends HttpServlet{
    private EmployeeDAO employeeDAO;

    public void init(){
        employeeDAO = new EmployeeDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String action = request.getServletPath();

        try{
            switch(action){
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertEmployee(request, response);
                    break;
                case "/delete":
                    deleteEmployee(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateEmployee(request, response);
                    break;
                default:
                    listEmployee(request, response);
                    break;
            }
        }catch(SQLException e){
            throw new ServletException(e);
        }
    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher rd = request.getRequestDispatcher("employeeForm.jsp");
        rd.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        Employee existingEmployee = employeeDAO.selectEmployee(id);
        request.setAttribute("existingEmployee", existingEmployee);
        RequestDispatcher rd = request.getRequestDispatcher("employeeForm.jsp");
        rd.forward(request, response);
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Employee> employeeL = new ArrayList<>();
        employeeL = employeeDAO.selectAllEmployees();
        request.setAttribute("employeeL", employeeL);
        RequestDispatcher rd = request.getRequestDispatcher("employeeList.jsp");
        rd.forward(request, response);
    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String position = request.getParameter("position");
        Employee newEmployee = new Employee(name, email, position);

        employeeDAO.insertEmployee(newEmployee);
        response.sendRedirect("employeeList.jsp");
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String position = request.getParameter("position");
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee = new Employee(id, name, email, position);
        employeeDAO.updateEmployee(employee);
        response.sendRedirect("employeeList.jsp");
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
        int id = Integer.parseInt(request.getParameter("id"));
        employeeDAO.deleteEmployee(id);
        response.sendRedirect("employeeList.jsp");
    }
}

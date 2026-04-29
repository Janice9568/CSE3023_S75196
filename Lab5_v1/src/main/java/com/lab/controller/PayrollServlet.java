package com.lab.controller;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;

import com.lab.bean.Employee;

@WebServlet("/PayrollServlet")
public class PayrollServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employee = new ArrayList<>();

        employee.add(new Employee("E1", "Mr.Q", "Markerting", 3000.00 ));
        employee.add(new Employee("E2", "Mr.W", "Sales", 3500.00 ));
        employee.add(new Employee("E3", "Mr.E", "Telecommunication", 4000.00 ));
        employee.add(new Employee("E4", "Mr.R", "HR", 4000.00 ));
        employee.add(new Employee("E5", "Mr.S", "IT", 3000.00 ));

        request.setAttribute("employeeList", employee);

        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
    }

}

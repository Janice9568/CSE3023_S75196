package com.lab.controller;
import jakarta.servlet.annotation.WebServlet;

import com.lab.bean.StudentBean;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;

import java.util.ArrayList;
import java.util.List;


@WebServlet("/StudentListServlet")
public class StudentListServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        List<StudentBean> stdList = new ArrayList<>();

        StudentBean s1 = new StudentBean();
        s1.setName("Ali"); s1.setMatricNo("s1111");

        StudentBean s2 = new StudentBean();
        s2.setName("Siti"); s2.setMatricNo("s2222");

        StudentBean s3 = new StudentBean();
        s3.setName("Mathew"); s3.setMatricNo("s3333");

        stdList.add(s1);
        stdList.add(s2);
        stdList.add(s3);

        request.setAttribute("stdList", stdList);

        RequestDispatcher rd = request.getRequestDispatcher("displayList.jsp");
        rd.forward(request, response);
    }
}

package com.DAO;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.Model.Employee;

public class EmployeeDAO {
    Connection conn = null;
    private String jdbcURL = "jdbc:mysql://localhost:3306/company";
    private String jdbcUser = "root";
    private String jdbcPassword= "admin";

    private static final String INSERT_EMPLOYEES = "INSERT INTO employees (name, email, position) VALUES (?,?,?)";
    private static final String SELECT_ALL_EMPLOYEES = "SELECT * FROM employees";
    private static final String SELECT_EMPLOYEE_BY_ID = "SELECT * FROM employees WHERE id = ?";
    private static final String DELETE_EMPLOYEES = "DELETE FROM employees WHERE id = ?";
    private static final String UPDATE_EMPLOYEES = "UPDATE employees SET name = ?, email = ?, position = ? WHERE id = ?";

    public EmployeeDAO(){}

    protected Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
        }catch(SQLException e){
            e.printStackTrace();
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        return conn;
    }

    public void insertEmployee(Employee employee) throws SQLException{
        try(Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(INSERT_EMPLOYEES);){
            pstmt.setString(1, employee.getName());
            pstmt.setString(2, employee.getEmail());
            pstmt.setString(3, employee.getPosition());
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public Employee selectEmployee(int id) {
        Employee employee = null;
        try(Connection conn = getConnection();
            PreparedStatement pstmt = conn.prepareStatement(SELECT_EMPLOYEE_BY_ID);){
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String position = rs.getString("position");
                employee = new Employee(id, name, email, position);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return employee;
    }

    public List<Employee> selectAllEmployees(){
        List <Employee> employees = new ArrayList<>();

        try(Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL_EMPLOYEES)){
            ResultSet rs = pstmt.executeQuery();

            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String position = rs.getString("position");
                employees.add(new Employee(id, name, email, position));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return employees;
    }

    public boolean updateEmployee(Employee employee) throws SQLException{
        boolean rowUpdated = false;
        try(Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(UPDATE_EMPLOYEES);){
            pstmt.setString(1, employee.getName());
            pstmt.setString(2, employee.getEmail());
            pstmt.setString(3, employee.getPosition());
            pstmt.setInt(4, employee.getId());
            rowUpdated = pstmt.executeUpdate() > 0;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return rowUpdated;
    }

    public boolean deleteEmployee(int id) throws SQLException{
        boolean rowDeleted = false;
        try(Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(DELETE_EMPLOYEES);){
            pstmt.setInt(1, id);
            rowDeleted = pstmt.executeUpdate() > 0;
        }catch(SQLException e){
            e.printStackTrace();
        }
        return rowDeleted;
    }
}

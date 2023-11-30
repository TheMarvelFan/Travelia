package com.kushagra.onlinetripplanner;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "registration", value = "/registration")
public class CustomerRegistration extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String name = request.getParameter("t1");
            String email = request.getParameter("t2");
            String add = request.getParameter("t3");
            String pin = request.getParameter("t4");
            String city = request.getParameter("t5");
            String state = request.getParameter("t6");
            String phone = request.getParameter("t7");

            PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("insert into registration(fname,email,address,pin,city,state,phone,b_date) values(?,?,?,?,?,?,?,curdate())");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, add);
            preparedStatement.setString(4, pin);
            preparedStatement.setString(5, city);
            preparedStatement.setString(6, state);
            preparedStatement.setString(7, phone);

            int x = preparedStatement.executeUpdate();
            if (x > 0) {
                response.sendRedirect("registration.jsp?msg=Successfully Registered.");
            } else {
                response.sendRedirect("registration.jsp?msg=User already registered.");
            }
        } catch (SQLException | ClassNotFoundException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    public String getServletInfo() {
        return "Registers new customers.";
    }
}

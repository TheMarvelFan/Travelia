package com.kushagra.onlinetripplanner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "changepass", value = "/changepass")
public class ChangePassword extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session =request.getSession(true);
            String oldPassword = request.getParameter("t1");
            String newPassword = request.getParameter("t2");
            String user = String.valueOf(session.getAttribute("user1"));

            PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("select password from login where id = ?");
            preparedStatement.setString(1, user);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String pass = resultSet.getString(1);
                if (pass.equals(oldPassword)) {
                    preparedStatement = DataBConnection.getConnection().prepareStatement("update login set password = ? where id = ?");
                    preparedStatement.setString(1, newPassword);
                    preparedStatement.setString(2, user);
                    int i = preparedStatement.executeUpdate();
                    if (i < 0) {
                        response.sendRedirect("changePass.jsp?msg=Password changed successfully.");
                    } else {
                        response.sendRedirect("changePass.jsp?msg=Please enter correct Old Password.");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
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
        return "Updates password";
    }
}

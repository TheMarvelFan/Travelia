package com.kushagra.onlinetripplanner;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "changeforgotpassword", value = "/changeforgotpassword")
public class ChangeForgotPassword extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
        String nPass = request.getParameter("newPassword");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>\n");
        out.println("<html>\n");
        out.println("<head></head>\n");
        PreparedStatement statement = DataBConnection.getConnection().prepareStatement("update login set password = ? where email = ?");
        statement.setString(1, nPass);
        statement.setString(2, ForgotPassword.mail);
        statement.executeUpdate();
        out.println("<body> <h2> Password Updated Successfully. </h2>\n");
        out.println("<h2>Click here to go back to <a href='login.jsp'>login page</a></h2>\n");
        out.println("</body></html>");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Updates password";
    }
}

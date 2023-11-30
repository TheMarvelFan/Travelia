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

@WebServlet(name = "feedback", value = "/feedback")
public class Feedback  extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("t1");
            String subj = request.getParameter("t2");
            String text = request.getParameter("t3");

            PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("insert into feedback(id, sub, msg) values (?,?,?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, subj);
            preparedStatement.setString(3, text);
            int x = preparedStatement.executeUpdate();

            if(x > 0) {
                response.sendRedirect("feedback.jsp?msg=Feedback sent successfully.");
            }
            else {
                out.println("<h1>Error in sending feedback!</h1>");
            }
        } catch (IOException | ClassNotFoundException | SQLException e) {
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
        return "Provides feedback mechanism.";
    }
}

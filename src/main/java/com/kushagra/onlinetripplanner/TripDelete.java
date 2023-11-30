package com.kushagra.onlinetripplanner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "deletetrip", value = "/deletetrip")
public class TripDelete extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            String code = request.getParameter("id");
            PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("delete from trip where id = ?");
            preparedStatement.setString(1, code);
            int x = preparedStatement.executeUpdate();
            if (x > 0) {
                response.sendRedirect("view_trip.jsp?msg= Successfully deleted trip.");
            } else {
                response.sendRedirect("view_trip.jsp?msg= Error in deleting trip.!");
            }
        } catch (SQLException | IOException | ClassNotFoundException e) {
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
        return "Deletes trip from database";
    }
}

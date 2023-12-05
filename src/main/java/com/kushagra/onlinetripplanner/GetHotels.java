package com.kushagra.onlinetripplanner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "gethotels", value = "/gethotels")
public class GetHotels extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");

        // Get the location parameter from the request
        String location = request.getParameter("location");

        // Check if location is not null before using it in the SQL query
        if (location != null && !location.isEmpty()) {
            try {
                // For debugging purposes, print the SQL query to the console
                String sqlQuery = "SELECT name FROM " + location + ";";
                System.out.println("SQL Query: " + sqlQuery);

                ResultSet resultSet = DataBConnection.getConnection().createStatement().executeQuery(sqlQuery);

                while (resultSet.next()) {
                    response.getWriter().println("<option>" + resultSet.getString(1) + "</option>");
                }
            } catch (SQLException | ClassNotFoundException e) {
                // For debugging purposes, print the exception stack trace to the console
                e.printStackTrace();

                throw new ServletException(e);
            }
        } else {
            // Handle the case where location is null or empty
            response.getWriter().println("<option>No location selected</option>");
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
        return "Returns list of hotels at selected location dynamically during booking";
    }
}

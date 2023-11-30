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

@WebServlet(name = "addrooms", value = "/addrooms")
public class AddRooms extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
        String[] names = request.getParameterValues("hotelName[]");
        String[] rooms = request.getParameterValues("numRooms[]");

        PreparedStatement statement = DataBConnection.getConnection().prepareStatement("insert into " + AddTrip.placesAddedRecently.get(AddTrip.placesAddedRecently.size() - 1) + " values(?, ?);");
        for (int i = 0; i < names.length; i++) {
            statement.setString(1, names[i]);
            statement.setString(2, rooms[i]);
            statement.executeUpdate();
        }
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html><head></head>");
        out.println("<body><h2> Successfully added all hotels. Click to go back to <a href='Add_trip.jsp'>Admin Page</a>.</h2></body>");
        out.println("</html>");
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
        return "Adds hotels and number of rooms dynamically to tables.";
    }
}

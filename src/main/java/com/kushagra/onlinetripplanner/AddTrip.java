package com.kushagra.onlinetripplanner;

import jakarta.servlet.annotation.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "addtrip", value = "/addtrip")
@MultipartConfig
public class AddTrip extends HttpServlet {
    public static List<String> placesAddedRecently = new LinkedList<>();
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String[] value = new String[6];
        String fileName = null;
        try {
            String fileSavePath = getServletContext().getRealPath("/");
            Collection<Part> parts = request.getParts();
            int i = 0;
            for (Part part : parts) {
                if (part.getContentType() == null) {
                    // Handle form field
                    value[i] = request.getParameter(part.getName());
                    i++;
                } else {
                    // Handle file upload
                    fileName = getFileName(part);
                    if (fileName != null && !fileName.isEmpty()) {
                        part.write(fileSavePath + fileName);
                    }
                }
            }

            PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("insert into trip (t_cat,location,trip_day,price,disc,photo,a_date) values (?,?,?,?,?,?,curdate());");
            preparedStatement.setString(1, value[0]);
            preparedStatement.setString(2, value[1]);
            preparedStatement.setString(3, value[2]);
            preparedStatement.setString(4, value[3]);
            preparedStatement.setString(5, value[4]);
            preparedStatement.setString(6, "./" + fileName);

            int x = preparedStatement.executeUpdate();
            if (x > 0) {
                preparedStatement = DataBConnection.getConnection().prepareStatement("SHOW TABLES LIKE ?;");
                preparedStatement.setString(1, value[1]);
                ResultSet set = preparedStatement.executeQuery();
                if (set.next()) {
                    response.sendRedirect("Add_trip.jsp?msg=Trip added successfully!");
                } else {
                    Statement statement = DataBConnection.getConnection().createStatement();
                    statement.executeUpdate("create table " + value[1] + "(name varchar(20) NOT NULL, num_rooms int NOT NULL);");
                    placesAddedRecently.add(value[1]);
                    response.sendRedirect("AddRooms.jsp");
                }
            }
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1)
                        .substring(fileName.lastIndexOf('\\') + 1);
            }
        }
        return null;
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
        return "Adds trip to customer's database";
    }
}

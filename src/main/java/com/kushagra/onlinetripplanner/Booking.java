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
import java.sql.SQLException;

@WebServlet(name = "booking", value = "/booking")
public class Booking extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            String email = request.getParameter("t1");
            String name = request.getParameter("t2");

            PreparedStatement statement = DataBConnection.getConnection().prepareStatement("select * from registration where email = ?;");
            statement.setString(1, email);
            ResultSet set = statement.executeQuery();
            if (set.next()) {
                statement = DataBConnection.getConnection().prepareStatement("insert into booking (c_id, p_n, b_date) values (?, ?, current_date);");
                statement.setString(1, email);
                statement.setString(2, name);
                int numR = Integer.parseInt(request.getParameter("t3"));
                String loc = request.getParameter("t4");
                String hotNam = request.getParameter("t5");
                int x = statement.executeUpdate();
                statement = DataBConnection.getConnection().prepareStatement("UPDATE " + loc + " SET num_rooms = num_rooms - ? WHERE name = ?;");
                statement.setInt(1, numR);
                statement.setString(2, hotNam);
                statement.executeUpdate();

                if (x > 0) {
                    session.setAttribute("c_id", email);
                    session.setAttribute("p", name);
                    response.sendRedirect("printslip.jsp?msg=Successfully registered.");
                } else {
                    response.sendRedirect("printslip.jsp?msg=Error in registering.");
                }
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
        return "Book trip";
    }
}

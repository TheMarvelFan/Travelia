package com.kushagra.onlinetripplanner;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "forgotpass", value = "/forgotpass")
public class ForgotPassword extends HttpServlet {
    public static String mail;
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
        PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("SELECT COUNT(*) as count_of_emails FROM login WHERE email = ?;");
        mail = request.getParameter("email");
        preparedStatement.setString(1, mail);
        ResultSet set = preparedStatement.executeQuery();
        if (set.next()) {
             if (set.getInt("count_of_emails") > 0) {
                 response.sendRedirect("EmailConf.jsp");
             } else {
                 response.setContentType("text/html");
                 PrintWriter out = response.getWriter();
                 out.println("<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>\n" +
                         "<!DOCTYPE html>\n" +
                         "<html>\n" +
                         "    <head>\n" +
                         "        <title> Error </title>\n" +
                         "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n" +
                         "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n" +
                         "<meta name=\"keywords\" content=\"Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n" +
                         "Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n" +
                         "<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n" +
                         "<link href=\"bootstrap.css\" rel='stylesheet' type='text/css' />\n" +
                         "<!-- Custom Theme files -->\n" +
                         "<link href=\"style.css\" rel='stylesheet' type='text/css' />\n" +
                         "<link rel=\"stylesheet\" href=\"flexslider.css\" type=\"text/css\" media=\"screen\" />\n" +
                         "<script src=\"js/jquery.min.js\"> </script>\n" +
                         "<!--/script-->\n" +
                         "<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n" +
                         "<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n" +
                         "\t\t\t\t\t<a href=\"index.jsp\"><h1>Trip<span>Planner</span></h1></a>\n" +
                         "\t\t\t\t</div>\n" +
                         "\t\t\t\t<span class=\"menu\"></span>\n" +
                         "\t\t\t\t<div class=\"top-menu\">\n" +
                         "\t\t\t\t<ul class=\"cl-effect-16\">\n" +
                         "\t\t\t\t\t\t<li><a class=\"\" href=\"index.jsp\" data-hover=\"HOME\">Home</a></li> \n" +
                         "\t\t\t\t\t\t<li><a href=\"about.jsp\" data-hover=\"About\">About</a></li>\n" +
                         "\t\t\t\t\t\t<li><a href=\"gallery.jsp\" data-hover=\"Gallery\">Gallery</a></li>\n" +
                         "\t\t\t\t         \t<li><a href=\"contact.jsp\" data-hover=\"CONTACT\">Contact</a></li>\n" +
                         "                                                <li><a href=\"trip.jsp\" data-hover=\"Trip Plan\">Trip Plan</a></li>\n" +
                         "\n" +
                         "\t\t\t\t\t</ul>\n" +
                         "\t\t\t\t</div>\n" +
                         "\t\t\t\t<div class=\"top_right\">\n" +
                         "\t\t\t\t\t<h6>Your first visit? Call for more info </h6>\n" +
                         "\t\t\t\t\t<p>+91-00000000</p>\n" +
                         "\t\t\t\t\t<ul class=\"f-icons\">\n" +
                         "                                            <li><a href=\"login.jsp\" class=\"\" style=\"color: #269abc;\"><h4 >Login </h4></a></li>\n" +
                         "\t\t\t\t\t\t<li style=\"color: #269abc\">| </li>\n" +
                         "                                                <li><a href=\"registration.jsp\" class=\"\" style=\"color: #269abc;\"> <h4>New Registration</h4></a></li>\n" +
                         "\t\t\t\t\t</ul>\n" +
                         "<div><h3>Email not registered.</h3></div>\n" +
                         "\t\t    <p>&copy; 2023 All Rights Reserved </p>\n" +
                         "\t\t</div>\n" +
                         "</body>\n" +
                         "</html>");
             }
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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            processRequest(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Check credentials before updating password";
    }
}

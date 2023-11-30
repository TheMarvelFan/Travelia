package com.kushagra.onlinetripplanner;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "confirmcode", value = "/confirmcode")
public class ConfirmCode extends HttpServlet {
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getParameter("code").equals("0000")) {
            response.sendRedirect("ConfirmPassword.jsp");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>\n");
            out.println("<html>\n");
            out.println("<head></head>\n");
            out.println("<body> <h2> Incorrect confirmation code. </h2></body>\n");
            out.println("</html>");
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
        return "Checks confirm code";
    }
}

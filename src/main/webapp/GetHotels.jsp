<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.kushagra.onlinetripplanner.DataBConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<%
    String selectedLocation = request.getParameter("location");
    try {
        ResultSet set = DataBConnection.getConnection().createStatement().executeQuery("select name from " + selectedLocation);
        while (set.next()) {
            out.println("<option>" + set.getString(1) + "</option>\n");
        }
    } catch (SQLException | ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
%>

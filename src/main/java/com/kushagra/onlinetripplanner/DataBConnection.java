package com.kushagra.onlinetripplanner;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBConnection {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3308/trip_planner", "root", "Ilovegb@666");
    }
}
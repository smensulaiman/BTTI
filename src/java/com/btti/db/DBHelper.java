package com.btti.db;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {

    public static Connection conn;
    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/btti";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Connected");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    
    public static void main(String[] args) {
        getConnection();
    }
}

package com.dbconnect;
import java.sql.*;
public class DBConnection {
	 public static Connection createConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost:3306/techtonicsapp";
	 String username = "root";
	 String password = "";
	  
	 try
	 {
	 try
	 {
	 Class.forName("com.mysql.jdbc.Driver");
	 } 
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 }
	  con = DriverManager.getConnection(url, username, password);
	 } 
	 catch (Exception e) 
	 {
	 e.printStackTrace();
	 }
	 return con; 
	 }
}

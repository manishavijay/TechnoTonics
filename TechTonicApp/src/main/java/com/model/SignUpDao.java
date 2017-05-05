package com.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import com.mvc.bean.SignUpBean;
import com.dbconnect.*;
import com.controller.*;
public class SignUpDao {
	public String signupUser(SignUpBean signupbean)
	 {
	 String email =signupbean.getEmail();
	 String name =signupbean.getName();
	 String password = signupbean.getPassword();
	  
	 Connection con = null;
	PreparedStatement preparedStatement = null;
	  
	 try
	 {
	 con = DBConnection.createConnection();
	 String query = "insert into singup(email,name,password)values(?,?,?)"; 
	  preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1,email);
	 preparedStatement.setString(2,name);
	 preparedStatement.setString(3,password);
	  
	 int i= preparedStatement.executeUpdate();
	  
	 if (i!=0)  
	 return "SUCCESS"; 
	 }
	 catch(Exception e)
	 {
	 e.printStackTrace();
	 }
	 return "Oops.. Something went wrong there..!"; 
	 }
}

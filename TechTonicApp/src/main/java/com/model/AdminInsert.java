package com.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String Date=request.getParameter("Date");
		String TechTalk=request.getParameter("TechTalk");
		String Description=request.getParameter("Description");
		String Presentor=request.getParameter("presenter");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/techtonicsapp","root","");  
			PreparedStatement prepare=con.prepareStatement("insert into techtalk(Date,tech_talk_data,Description,Presontor)values(?,?,?,?)");
			 prepare.setString(1, Date);
			 prepare.setString(2, TechTalk);
			 prepare.setString(3, Description);
			 prepare.setString(4, Presentor);
			 int i=prepare.executeUpdate();
			 if(i>0)
			 { 
				 request.getRequestDispatcher("/WelcomeAdmin.jsp").forward(request,response);
			 }
			}catch(Exception e){ System.out.println(e);} 
		
			}  
	}


package com.model;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		 PrintWriter out=response.getWriter();  
	      //  request.getRequestDispatcher("home.jsp").include(request, response);  
	          
	        String name=request.getParameter("admin");  
	        String password=request.getParameter("password");  
	          
	        if(password.equals("admin123")){  
	        out.print("Welcome, "+name);  
	        HttpSession session=request.getSession();  
	        session.setAttribute("name",name);  
	        request.getRequestDispatcher("WelcomeAdmin.jsp").include(request, response);  
	        }  
	        else{  
	            out.print("Sorry, username or password error!");  
	            request.getRequestDispatcher("Admin.jsp").include(request, response);  
	        }  
	        out.close();  
	}

}

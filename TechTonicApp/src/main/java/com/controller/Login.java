package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.*;
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		   response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	       //request.getRequestDispatcher("home.jsp").include(request, response);  
	          
	        String name=request.getParameter("email");  
	        String password=request.getParameter("password");  
	          
	        HttpSession session = request.getSession(false);
			if(session!=null)
	        session.setAttribute("name", name);

	        if(LoginDao.validate(name,password)){  
	            RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");  
	            rd.forward(request,response);  
	        }  
	        else
	        {  
	            out.print("<p style=\"color:red\">Sorry username or password error</p>");  
	            RequestDispatcher rd=request.getRequestDispatcher("first.jsp");  
	            rd.include(request,response);  
	        }  

	        out.close();  
	       
	        
	
	}

	
	
}

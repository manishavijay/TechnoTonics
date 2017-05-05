package com.controller;
import com.mvc.bean.SignUpBean;
import com.model.*;
import com.dbconnect.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
      public SignUp() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 response.setContentType("text/html");
		 PrintWriter out=response.getWriter();
		 String email=request.getParameter("email");
		 String name=request.getParameter("name");
		 String password=request.getParameter("pass");
		 SignUpBean signup=new SignUpBean();
		 signup.setEmail(email);
		 signup.setName(name);
		 signup.setPassword(password);
		 SignUpDao signupdao=new SignUpDao();
		 String userSignup = signupdao.signupUser(signup);
		  
		 if(userSignup.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("index.html").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", userSignup);
		 request.getRequestDispatcher("first.jsp").forward(request, response);
		 }
		
	}
}

	



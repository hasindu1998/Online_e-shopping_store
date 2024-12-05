package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = null;
		
		try {
			//validate user
			user = UserDB.isValidUser(username, password);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}

		HttpSession session = request.getSession();

		if(user != null) {
			// set frequently used user data in session
			session.setAttribute("userid", user.getId());
			session.setAttribute("Fname", user.getFname());
			session.setAttribute("UserType", user.getUsertype());
			session.setAttribute("propicUrl", user.getPropicUrl());
			
			//filter by user type and redirect to appropriate page
			if(user.getUsertype().equals("admin")) {
				response.sendRedirect("index.jsp"); // change later
			}
			else if(user.getUsertype().equals("seller")) {
				response.sendRedirect("index.jsp"); // change later
			}
			else if(user.getUsertype().equals("buyer")) {
				response.sendRedirect("index.jsp"); // change later
			}
		}
		else {
			//if user is invalid, redirect to login page
			request.setAttribute("loginError", "Invalid username or password");
	        RequestDispatcher dis = request.getRequestDispatcher("logIn.jsp");
	        dis.forward(request, response);
		}
	}

}

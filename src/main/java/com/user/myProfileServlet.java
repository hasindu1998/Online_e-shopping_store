package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/myProfileServlet")
public class myProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int currentUserid =(int) session.getAttribute("userid"); // get session user id
		User user = UserDB.getUserdetails(currentUserid);

		if(user != null) {
			
			//recive error from updatepassword servlet and update user servlet
			String message = request.getParameter("message");
			
			if (message == null || message.trim().isEmpty()) {
				//do nothing
			}
			else {
				request.setAttribute("Error",message);
			}

			//set user object to request and redirect to myProfile.jsp
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("myProfile.jsp");
			dispatcher.forward(request, response);
		}
		else {
			response.sendRedirect("index.jsp");  // mekata error page ekk dpnn
		}
		
	}
}

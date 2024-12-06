package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String birthdate = request.getParameter("Bdate");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("Cno");
		String userType = request.getParameter("userType");

		boolean isRegistered = UserDB.registerUser(firstname, lastname, username, password, email, phone, birthdate, userType,"profileicon.webp");

		if(isRegistered == true) {
			response.sendRedirect("logIn.jsp");
		}
		else {
			request.setAttribute("RegisterError", "Registration Failed");
	        RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
	        dis.forward(request, response);
		}
	}

}

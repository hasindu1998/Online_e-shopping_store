package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Userid = request.getParameter("usrid");
		int iD = Integer.parseInt(Userid);
		
		try {
			boolean success = UserDB.deleteUser(iD);
			
			if(success) {
				response.sendRedirect("LogoutServlet");
			}
			else {
				response.sendRedirect("myProfileServlet");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		
	}

}

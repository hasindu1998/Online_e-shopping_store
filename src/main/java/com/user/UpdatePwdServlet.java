package com.user;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdatePwdServlet")
public class UpdatePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String realoldPwd =(String) session.getAttribute("Pwd");
		int userid = (int) session.getAttribute("userid");
		
		String oldPwd = request.getParameter("oldpwd");
		String newPwd = request.getParameter("newpwd");
		
		if(realoldPwd.equals(oldPwd)) {
			try {
				boolean pwdchanged = UserDB.updatePassword(userid, newPwd);
				if(pwdchanged) {
					response.sendRedirect("LogoutServlet");
				}
				else {
					String message = "Error when changing password. try Again!";
					response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		else {
			//send error using url
			String message = "Wrong Old Password. Try Again!";
			response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
		}
		
	}

}

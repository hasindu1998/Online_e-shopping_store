package com.Admindashboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.product.Product;
import com.product.ProductDB;
import com.user.User;
import com.user.UserDB;

@WebServlet("/AdminDashboardServlet")
public class AdminDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userType = (String) session.getAttribute("UserType");
		
		
		if(userType==null) {
			response.sendRedirect("index.jsp"); //if not logged in
		}
		else if(userType.equals("admin")) {
			
			// retrive values
			List<User> users = UserDB.getallUsers(); //get all users for all users table
			List<Product> products = ProductDB.getAllProducts(); //get all products from product table
			int userCount = (int) UserDB.userCount();
			int productCount = (int) ProductDB.getproductCount();
			
			
			//send values to frontend
			request.setAttribute("users", users);
			request.setAttribute("products", products);
			request.setAttribute("userCount", userCount);
			request.setAttribute("productCount", productCount);
			
			
			//forward to admin dashboard
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminDB.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			response.sendRedirect("index.jsp"); //if not admin
		}
		
	}

}

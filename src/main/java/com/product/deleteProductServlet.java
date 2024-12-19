package com.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteProductServlet
 */
@WebServlet("/deleteProductServlet")
public class deleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proId = request.getParameter("prodid");
		int convertedId = Integer.parseInt(proId);
		
		boolean isTrue;
		
		isTrue = ProductDB.deleteProduct(convertedId);
		
		try {
			if(isTrue == true) {
				response.sendRedirect("myProductsServlet");
			}
			else {
				response.sendRedirect("myProductsServlet");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}

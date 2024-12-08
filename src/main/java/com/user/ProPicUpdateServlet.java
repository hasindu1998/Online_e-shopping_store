package com.user;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/ProPicUpdateServlet")
public class ProPicUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean success = false;
		
		// Get image part from the form
		Part propic = request.getPart("profilepic");

		// Save image name in variable and sanitize it
		String imgName = propic.getSubmittedFileName().replaceAll(" ", "_");

		// file path 
		// me uploadDiractory ek hariyt danna vscode eken ganna lesi
		String uploadDir = "/Users/modithamarasingha/Documents/Programming Languages/JAVA/Online_e-shopping_store/src/main/webapp/Images/Profilepics";
		String propicPath = uploadDir + File.separator + imgName;

		try {
			    // Save the file
			    try (FileOutputStream fos = new FileOutputStream(propicPath);
			         InputStream is = propic.getInputStream()) {
			        
			        byte[] buffer = new byte[1024]; // Use a buffer for efficient reading
			        int bytesRead;
			        while ((bytesRead = is.read(buffer)) != -1) {
			            fos.write(buffer, 0, bytesRead);
			        }
			    }
			    
			    success = true; //file ek save unaa

		} 
		catch (IOException e) {
			    System.out.println("Error saving the file: " + e.getMessage());
			    e.printStackTrace();
			    success = false;
		}
		
		if(success == true) {
			//get user id
			HttpSession session = request.getSession();
			int userID = (int) session.getAttribute("userid");
			
			//update database
			boolean dbupdated = UserDB.updatePropic(userID,imgName);
			
			if (dbupdated) {
				session.setAttribute("propicUrl", imgName);
				response.sendRedirect("myProfileServlet");
			}
			else {
				response.sendRedirect("myProfileServlet");
			}
			
		}

	}
}

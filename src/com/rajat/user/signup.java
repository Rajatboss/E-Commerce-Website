package com.rajat.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.rajat.UserDAO.UserDAO;

@WebServlet("/signup")
public class signup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = (String) request.getParameter("email");
		String pass = (String) request.getParameter("password");
		String fName = (String)request.getParameter("first");
		String lName = (String)request.getParameter("last");
		try {
			UserDAO ud = UserDAO.getuserd();
			boolean isadded = ud.add(fName, lName, email, pass);
			if(isadded) {
				HttpSession session = request.getSession();
				session.setAttribute("isuser","yes");
				response.sendRedirect((String) session.getAttribute("page"));
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

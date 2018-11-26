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

@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String admin = (String) session.getAttribute("admin");
		System.out.println(admin);
		if(admin == "yes") {
			String username = request.getParameter("username");
			String passw = request.getParameter("paasw");
			if(check(username, passw))
				response.sendRedirect("admin.jsp");
			else response.sendRedirect("adminv.jsp");
		}
		
		String email = (String) request.getParameter("email1");
		String password = (String) request.getParameter("pass1");
		try {
			UserDAO ud = UserDAO.getuserd();
			boolean isexist = ud.check(email, password);
			if(isexist) {
				session = request.getSession();
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

	private boolean check(String username, String passw) {
		if(username == "raj" && passw == "rajat123") {
			return true;
		}
		else return false;
	}

}

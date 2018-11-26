package com.rajat.admin;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class admin extends HttpServlet{

	int id;
	String name;
	float amount;
	float price;
	public  admin(int p_id, String p_name, float p_amount, float p_price) {
		this.id = p_id;
		this.name = p_name;
		this.amount = p_amount;
		this.price = p_price;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setAttribute("p_id", id);
		request.setAttribute("p_name",name);
		request.setAttribute("p_amount", amount);
		request.setAttribute("p_price", price);
		response.sendRedirect("admin.jsp");
	}
	
}

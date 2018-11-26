package com.rajat.view;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class p_create extends HttpServlet{
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ProductCRUD frame = ProductCRUD.createproduct();
		frame.setVisible(true);
	}

}

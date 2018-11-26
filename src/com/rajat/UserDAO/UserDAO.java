package com.rajat.UserDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class UserDAO {
	String uname;
	String pass;
	Connection con;
	static UserDAO userd;
	
	public Connection getconnection(String uname, String password) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_shop", uname, password);
		return con;
	}
	
	private UserDAO() throws ClassNotFoundException, SQLException{
		uname = "root";
		pass = "12345";
		con = getconnection(uname, pass);
	}
	
	public boolean check(String email, String password) throws SQLException {
		String query = "select exists(select * from customer where emailId = ? and password = ?);";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, email);
		pst.setString(2, password);
		return pst.execute();
	}
	
	public boolean add(String fName, String lName, String email, String password) throws SQLException {
		String query = "SELECT * FROM customer WHERE emailId = ?;";
		PreparedStatement pst = con.prepareStatement(query);
		pst.setString(1, email);
		ResultSet rs = pst.executeQuery();
		if(rs.absolute(1)) {
			return false;
		}
		else {
			query = "insert into customer (userName, emailId, password) values  ( ?, ?, ?);";
			pst = con.prepareStatement(query);
			pst.setString(1, fName +" "+ lName);
			pst.setString(2, email);
			pst.setString(3, password);
			pst.executeUpdate();
			return true;
		}
	}
	
	public static UserDAO getuserd() throws ClassNotFoundException, SQLException {
		if(userd == null) {
			userd = new UserDAO();
			return userd;
		}
		else return userd;
	}
	

	public void addproduct(int p_id, String p_name, float p_amount, float p_price) throws SQLException {
		String query = "insert into new_Product values  ( ?, ?, ?, ?);";
		PreparedStatement pst = con.prepareStatement(query);
		pst = con.prepareStatement(query);
		pst.setInt(1,p_id);
		pst.setString(2, p_name);
		pst.setInt(3, (int)p_amount);
		pst.setInt(4, (int)p_price);
		pst.executeUpdate();
	}

	public void removeproduct(int p_id, String p_name, float p_amount, float p_price) throws SQLException {
		String query = "delete from new_Product where  productId = ? and productName = ? ;";
		PreparedStatement pst = con.prepareStatement(query);
		pst = con.prepareStatement(query);
		pst.setInt(1,p_id);
		pst.setString(2, p_name);
		pst.executeUpdate();
	}

}

package com.rajat.view;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.rajat.UserDAO.UserDAO;
import com.rajat.admin.admin;

import javax.swing.JLabel;
import javax.swing.JTextField;
import java.awt.Font;

import javax.servlet.RequestDispatcher;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.awt.event.ActionEvent;

public class ProductCRUD extends JFrame {

	private JPanel contentPane;
	private JTextField P_id;
	private JTextField P_name;
	private JTextField P_price;
	private JTextField P_amount;
	static ProductCRUD frame;
	public static void main(String[] args) {
		frame  = new ProductCRUD();
		frame.setVisible(true);
	}
	
	private ProductCRUD() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 489, 343);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblProductid = new JLabel("ProductID");
		lblProductid.setFont(new Font("Times New Roman", Font.PLAIN, 13));
		lblProductid.setBounds(73, 20, 93, 20);
		contentPane.add(lblProductid);
		
		P_id = new JTextField();
		P_id.setBounds(240, 20, 166, 20);
		contentPane.add(P_id);
		P_id.setColumns(10);
		
		JLabel lblProductname = new JLabel("ProductName");
		lblProductname.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblProductname.setBounds(73, 56, 93, 24);
		contentPane.add(lblProductname);
		
		P_name = new JTextField();
		P_name.setBounds(240, 59, 166, 20);
		contentPane.add(P_name);
		P_name.setColumns(10);
		
		JLabel lblPrice = new JLabel("Price");
		lblPrice.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblPrice.setBounds(73, 91, 93, 24);
		contentPane.add(lblPrice);
		
		JLabel lblAmount = new JLabel("Amount");
		lblAmount.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblAmount.setBounds(73, 126, 93, 24);
		contentPane.add(lblAmount);
		
		P_price = new JTextField();
		P_price.setColumns(10);
		P_price.setBounds(240, 94, 166, 20);
		contentPane.add(P_price);
		
		P_amount = new JTextField();
		P_amount.setColumns(10);
		P_amount.setBounds(240, 129, 166, 20);
		contentPane.add(P_amount);
		
		JButton btnAddProduct = new JButton("ADD Product");
		btnAddProduct.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int p_id = Integer.parseInt(P_id.getText());
				String p_name = P_name.getText();
				float p_amount = Float.parseFloat(P_amount.getText());
				float p_price = Float.parseFloat(P_price.getText());
				admin ad = new admin(p_id, p_name, p_amount, p_price);
				try {
					UserDAO ud = UserDAO.getuserd();
					ud.addproduct(p_id, p_name, p_amount, p_price);
				} catch (ClassNotFoundException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				frame.setVisible(false);
			}
		});
		btnAddProduct.setBounds(78, 221, 101, 23);
		contentPane.add(btnAddProduct);
		
		JButton btnRemoveProduct = new JButton("Remove Product");
		btnRemoveProduct.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int p_id = Integer.parseInt(P_id.getText());
				String p_name = P_name.getText();
				float p_amount = Float.parseFloat(P_amount.getText());
				float p_price = Float.parseFloat(P_price.getText());
				admin ad = new admin(p_id, p_name, p_amount, p_price);
				try {
					UserDAO ud = UserDAO.getuserd();
					ud.removeproduct(p_id, p_name, p_amount, p_price);
				} catch (ClassNotFoundException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				frame.setVisible(false);
			}
		});
		btnRemoveProduct.setBounds(287, 221, 132, 23);
		contentPane.add(btnRemoveProduct);
	}
	
	public static ProductCRUD createproduct() {
		if(frame == null) {
			frame = new ProductCRUD();
			return frame;
		}
		else return frame;
	}
}

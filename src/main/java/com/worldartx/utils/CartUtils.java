package com.worldartx.utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import  java.sql.ResultSet;
import com.worldartx.dto.*;
import com.worldartx.utils.*;

public class CartUtils {
	private static final Logger logger = LogManager.getLogger(CartUtils.class);

	public synchronized static List<Cart> getCartDetails() {
		  
			
		
		logger.info("Inside getProdcutDetails()");
		List<Cart> cList = new ArrayList<Cart>();
		String query = "select * from cart";

		// using try-with-resources to avoid closing resources (boiler plate
		// code)

		// Step 1: Establishing a Connection
		try {
			Connection connection = (Connection) JDBCUtils.getConnect();
			logger.info("Select Query Connected to DB...");

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);

			// Step 3: Execute the query or update query
			ResultSet rs = (ResultSet) preparedStatement.executeQuery();
			logger.info("Select Query Executed Successfully...");

			// Step 4: Process the ResultSet object.
			Cart c = null;

			while (rs.next()) {

				String email = rs.getString("email");
				String mobno = rs.getString("mobno");
				Long pid = rs.getLong("pid");
				Integer quantity = rs.getInt("quantity");
				String price = rs.getString("price");
				String catagory = rs.getString("catagory");
				String cgst = rs.getString("cgst");
				String sgst = rs.getString("sgst");
				String total = rs.getString("total");
				String address = rs.getString("address");
				String city = rs.getString("city");
				String state = rs.getString("state");
				String country = rs.getString("country");
				String pincode = rs.getString("pincode");
				String odate = rs.getString("odate");
				String ddate = rs.getString("ddate");
				String pmttype = rs.getString("pmttype");
				String tid = rs.getString("tid");
				String pmtid = rs.getString("pmtid");
				String status = rs.getString("status");

				c = new Cart(email, mobno, pid, quantity, price, catagory, cgst, sgst, total, address, city, state,
						country, pincode, odate, ddate, pmttype, tid, pmtid, status);
				cList.add(c);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cList;
		
	}

	public synchronized static List<Cart> getCartDetails(String emailid, String mobileno) {
		logger.info("Inside getProdcutDetails()");
		List<Cart> cList = new ArrayList<Cart>();
		String query = "select * from cart where (email ='" + emailid + "' or mobno=='" + mobileno + "')";
		System.out.println("query:" + query);
		// using try-with-resources to avoid closing resources (boiler plate
		// code)

		// Step 1: Establishing a Connection
		try {
			Connection connection = (Connection) JDBCUtils.getConnect();
			logger.info("Select Query Connected to DB...");

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);

			// Step 3: Execute the query or update query
			ResultSet rs = (ResultSet) preparedStatement.executeQuery();
			logger.info("Select Query Executed Successfully...");

			// Step 4: Process the ResultSet object.
			Cart c = null;
			while (rs.next()) {

				String email = rs.getString("email");
				String mobno = rs.getString("mobno");
				Long pid = rs.getLong("pid");
				Integer quantity = rs.getInt("quantity");
				String price = rs.getString("price");
				String catagory = rs.getString("catagory");
				String cgst = rs.getString("cgst");
				String sgst = rs.getString("sgst");
				String total = rs.getString("total");
				String address = rs.getString("address");
				String city = rs.getString("city");
				String state = rs.getString("state");
				String country = rs.getString("country");
				String pincode = rs.getString("pincode");
				String odate = rs.getString("odate");
				String ddate = rs.getString("ddate");
				String pmttype = rs.getString("pmttype");
				String tid = rs.getString("tid");
				String pmtid = rs.getString("pmtid");
				String status = rs.getString("status");

				c = new Cart(email, mobno, pid, quantity, price, catagory, cgst, sgst, total, address, city, state,
						country, pincode, odate, ddate, pmttype, tid, pmtid, status);
				cList.add(c);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cList;
	}

	public synchronized static int insertCartDetails(String email, String mobno, Long pid, Integer quantity, String price,
			String catagory, String cgst, String sgst, String total, String address, String city, String state,
			String country, String pincode, String odate, String ddate, String pmttype, String tid, String pmtid,
			String status) {
		logger.info("Inside insertProductDetails()");
		try {
			String query = "insert into cart(email,mobno,pid,quantity,price,catagory,cgst,sgst,total,city,state,country,pincode,odate,ddate,pmttype,tid,pmtid,status)"
					+ " values('" + email + "','" + mobno + "','" + pid + "','" + quantity + "','" + price + "','"
					+ catagory + "','" + cgst + "','" + sgst + "','" + total + "','" + city + "','" + state + "','"
					+ country + "','" + pincode + "','" + odate + "','" + ddate + "','" + pmttype + "','" + tid + "','"
					+ pmtid + "','" + status + "')";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Insertion Connected...");

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);

			// Step 3: Execute the query or update query
			int process = preparedStatement.executeUpdate();
			System.out.println("Insertion Query Executed Successfully...");

			return process;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public synchronized static int updateCartDetails(Cart c) {
		logger.info("Inside updateProductDetails()");
		try {
			// email,mobno,pid,quantity,price,catagory,cgst,sgst,
			// total,city,state,country,pincode,odate,ddate,pmttype,tid,pmtid,status
			String query = "update cart set email='" + c.getEmail() + "',mobno='" + c.getMobno() + "',pid='"
					+ c.getPid() + "',quantity='" + c.getQuantity() + "',price='" + c.getPrice() + "',catagory='"
					+ c.getCatagory() + "',cgst='" + c.getCgst() + "',sgst='" + c.getSgst() + ",total='" + c.getTotal()
					+ "',city='" + c.getCity() + "',state='" + c.getState() + "',country='" + c.getCountry()
					+ "',pincode='" + c.getPincode() + "',odate='" + c.getOdate() + "',ddate='" + c.getDdate()
					+ "',pmttype='" + c.getPmttype() + "',status='" + c.getStatus() + "' where email=" + c.getEmail();

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Update Query Connected to DB...");

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);

			// Step 3: Execute the query or update query
			int status = preparedStatement.executeUpdate();
			logger.info("Update Query Executed Successfully...");

			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public synchronized static int deleteCartDetails(String pid) {
		logger.info("Inside updateProductDetails()");
		try {
			String query = "delete from cart where pid=" + pid;

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Delete Connected...");

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			// preparedStatement.setInt(1, 1);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			int status = preparedStatement.executeUpdate();
			logger.info("Delete Query Executed Successfully...");

			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}

package com.worldartx.utils;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import  java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.dto.Product;

public class ProductUtils {
	private static final Logger logger = LogManager.getLogger(ProductUtils.class);

	public synchronized static List<Product> getProdcutDetails() {
		logger.info("Inside getProdcutDetails()");
		List<Product> pList = new ArrayList<Product>();
		String query = "select * from product";

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
			Product p = null;
			while (rs.next()) {

				Long pid = rs.getLong(1);
				String path = rs.getString("path");
				String vendor = rs.getString("vendor");
				String artistname = rs.getString("artistname");
				String description = rs.getString("description");
				String usd = rs.getString("usd");
				String exchange = rs.getString("exchange");
				String quantity = rs.getString("quantity");
				String inr = rs.getString("inr");
				String catagory = rs.getString("catagory");
				String cgst = rs.getString("cgst");
				String sgst = rs.getString("sgst");
				String total = rs.getString("total");
				p = new Product(pid, path, vendor, artistname, description, usd, exchange, quantity, inr,catagory,cgst,sgst,total);
				pList.add(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pList;
	}
	
	public synchronized static List<Product> getProdcutDetails(String ids) {
		logger.info("Inside getProdcutDetails()");
		List<Product> pList = new ArrayList<Product>();
		String query = "select * from product where pid in('"+ids+"')";
        System.out.println("query:"+query);
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
			Product p = null;
			while (rs.next()) {

				Long pid = rs.getLong(1);
				String path = rs.getString("path");
				String vendor = rs.getString("vendor");
				String artistname = rs.getString("artistname");
				String description = rs.getString("description");
				String usd = rs.getString("usd");
				String exchange = rs.getString("exchange");
				String quantity = rs.getString("quantity");
				String inr = rs.getString("inr");
				String catagory = rs.getString("catagory");
				String cgst = rs.getString("cgst");
				String sgst = rs.getString("sgst");
				String total = rs.getString("total");
				p = new Product(pid, path, vendor, artistname, description, usd, exchange, quantity, inr,catagory,cgst,sgst,total);
				pList.add(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pList;
	}


	public synchronized static int insertProductDetails(String path, String vendor, String artistname, String description,
			String usd, String exchange, String quantity, String inr,String catagory,String cgst,String sgst,String total) {
		logger.info("Inside insertProductDetails()");
		try {
			String query = "insert into product(path,vendor,artistname,description,usd,exchange,quantity,inr,catagory,cgst,sgst,total)"
					+ " values('" + path + "','" + vendor + "','" + artistname + "','" + description + "','" + usd
					+ "','" + exchange + "','" + quantity + "','" + inr + "','" + catagory + "', '" + cgst +"','" + sgst + "','" + total + "')";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Insertion Connected..." +  query);

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			
			// Step 3: Execute the query or update query
			int status = preparedStatement.executeUpdate();
			System.out.println("Insertion Query Executed Successfully...");
			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public synchronized static int updateProductDetails(Product p) {
		logger.info("Inside updateProductDetails()");
		try {
			String query = "update product set path='" + p.getPath() + "',vendor='" + p.getVendor() + "',artistname='"
					+ p.getArtistName() + "',description='" + p.getDescription() + "',usd='" + p.getUsd()
					+ "',exchange='" + p.getExchange() + "',quantity='" + p.getQuantity() + "',inr='" + p.getInr()
					+ "',catagory='" + p.getCatagory()+ "',cgst='" + p.getCatagory()+ "',sgst='" + p.getSgst()+ "',total='" + p.getTotal()
					+ "' where pid=" + p.getPid();

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

	public synchronized static int deleteProductDetails(String pid) {
		logger.info("Inside updateProductDetails()");
		try {
			String query = "delete from product where pid=" + pid;

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

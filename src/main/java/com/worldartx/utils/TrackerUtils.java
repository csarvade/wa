package com.worldartx.utils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import   java.sql.ResultSet;
import com.worldartx.dto.*;
import com.worldartx.utils.*;

public class TrackerUtils {
	private static final Logger logger = LogManager.getLogger(TrackerUtils.class);

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
	
	
	public synchronized static List<ProductTracker> getProdcutTrackerDetails(Long id) {
		logger.info("Inside getProdcutDetails()");
		List<ProductTracker> ptList = new ArrayList<ProductTracker>();
		String query = "select p.artistname artistname,p.vendor vendor,p.description description,t.oid oid,t.ddate ddate,t.edate edate,t.status status from product p,tracker t where p.pid in('"+id+"') and p.pid = t.oid";
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
			ProductTracker pt = null;
			while (rs.next()) {

		
			
				/*
				 * String usd = rs.getString("usd"); String exchange = rs.getString("exchange");
				 * String quantity = rs.getString("quantity"); String inr = rs.getString("inr");
				 * String catagory = rs.getString("catagory"); String cgst =
				 * rs.getString("cgst"); String sgst = rs.getString("sgst"); String total =
				 * rs.getString("total");
				 */
				String vendor = rs.getString("vendor");
				String artistname = rs.getString("artistname");
				String description = rs.getString("description");
				Long oid = rs.getLong("oid");
				String ddate = rs.getString("ddate");
				String edate = rs.getString("edate");
				String status = rs.getString("status");
				pt = new ProductTracker(vendor, artistname, description, oid, ddate, edate, status);
				ptList.add(pt);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ptList;
	}


	public synchronized static int insertTrackerDetails(Long oid, String ddate, String edate, String status) {
		logger.info("Inside insertProductDetails()");
		try {
			String query = "insert into tracker(oid,ddate,edate,status)"
					+ " values('" + oid + "','" + ddate + "','" + edate + "','" + status + "')";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Insertion Connected..." +  query);

			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			
			// Step 3: Execute the query or update query
			int stat = preparedStatement.executeUpdate();
			System.out.println("Insertion Query Executed Successfully...");
			return stat;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public synchronized static int updateProductDetails(Tracker t) {
		logger.info("Inside updateProductDetails()");
		try {
			String query = "update tracker set ddate='" + t.getDdate() + "',edate='" + t.getEdate() + "',status='"
					+ t.getStatus()+ "' where oid=" + t.getOid();

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

	public synchronized static int deleteProductDetails(String oid) {
		logger.info("Inside updateProductDetails()");
		try {
			String query = "delete from tracker where oid=" + oid;

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

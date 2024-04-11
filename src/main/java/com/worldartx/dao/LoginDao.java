package com.worldartx.dao;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import  java.sql.ResultSet;
import com.worldartx.utils.JDBCUtils;

public class LoginDao {
	private static final Logger logger = LogManager.getLogger(LoginDao.class);

	public static boolean validate( String mobno,String username, String email, String password) {

		try {
			String uname = "";
			String mobnum = "";
			String emailid = "";
			if (username != null) {
				uname = username;
			}
			if (mobno != null) {
				mobnum = mobno;
			}
			if (email != null) {
				emailid = email;
			}
			String query = "select * from login where  (mobno='" + mobnum + "' or uname='" + uname + "' or email='"
					+ emailid + "') and password='" + password+"'";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			logger.info("Login Validate Connected...");

// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			
			logger.info(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = (ResultSet) preparedStatement.executeQuery();

			boolean status = rs.next();
			logger.info("Login Query Executed Successfully...");
			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}

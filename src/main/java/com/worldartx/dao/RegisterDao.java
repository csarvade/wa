package com.worldartx.dao;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import  java.sql.ResultSet;
import com.worldartx.utils.JDBCUtils;

public class RegisterDao {
	private static final Logger logger = LogManager.getLogger(RegisterDao.class);
	public static int insertRegistryDetails( String mobno,String username, String email, String password, String address,String role) {

		try {
		
			String query = "insert into login(mobno,uname,password,email,address,role)"
					+ " values('"+mobno+"','"+username+"','"+password+"','"+email+"','"+address+"','"+role+"')";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Registeration Connected...");

// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			// preparedStatement.setInt(1, 1);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			int status = (int) preparedStatement.executeUpdate();

			logger.info("Registeration Query Executed Successfully...");
			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}

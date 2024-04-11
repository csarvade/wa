package com.worldartx.dao;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import  java.sql.Connection;
import  java.sql.PreparedStatement;
import  java.sql.ResultSet;
import com.worldartx.utils.JDBCUtils;

public class LogsDao {
	private static final Logger logger = LogManager.getLogger(LogsDao.class);

	public static int insertLogs(String from, String page, String action, String date) {

		try {

			String query = "INSERT INTO logs (user, pagename, actionperformed, currentdate) "
					+ "VALUES ('"+from+"', '"+page+"', '"+action+"', '"+date+"')";

			// Step 1: Establishing a Connection
			Connection connection = (Connection) JDBCUtils.getConnect();
			System.out.println("Logs Connected...");

// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(query);
			// preparedStatement.setInt(1, 1);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			int status = (int) preparedStatement.executeUpdate();
			System.out.println("Logs Query Executed Successfully..." + status);
			logger.info("Logs Query Executed Successfully..." + status);
			return status;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}

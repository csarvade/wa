package com.worldartx.utils;

import java.sql.Connection;
import java.sql.DriverManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.dao.LoginDao;

public class JDBCUtils {
	public static Logger logger = LogManager.getLogger(LoginDao.class);

	public synchronized static Connection getConnect() {

		String dbUrl = "jdbc:mysql://localhost:3306/wa";
		String user = "root";
		String pass = "root";

		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dbUrl, user, pass);
			logger.info("DB Connected Successfully....");
		} catch (Exception e) {
			logger.error(e);

		}
		return con;
	}
}

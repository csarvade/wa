package com.worldartx.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.dao.LoginDao;
import com.worldartx.dao.RegisterDao;

/**
 * Servlet implementation class Register
 */
@WebServlet(name = "RegisterServlet", urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LogManager.getLogger(RegisterServlet.class);
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = "";
		String mobnum = "";
		String emailid = "";
		String password = "";
		String address = "";
		if (request.getParameter("uname") != null) {
			username = request.getParameter("uname");
		}
		if (request.getParameter("mobno") != null) {
			mobnum = request.getParameter("mobno");
		}
		if (request.getParameter("email") != null) {
			emailid = request.getParameter("email");
		}
		if (request.getParameter("password") != null) {
			password = request.getParameter("password");
		}
		if (request.getParameter("address") != null) {
			address = request.getParameter("address");
		}
		boolean status = LoginDao.validate( mobnum,username, emailid, password);
		logger.info("User Exists?: "+status);
		if (status) {
			response.sendRedirect("login.jso?msg=Account exists already...");
		} else {
			int stat = RegisterDao.insertRegistryDetails( mobnum,username, emailid, password, address,"U");
			if (stat == 1) {
				response.sendRedirect("login.jsp?msg=Account Created Successfully...");
			}
		}

	}

}

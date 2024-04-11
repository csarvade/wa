package com.worldartx.service;

import java.io.IOException;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.dao.LoginDao;
import com.worldartx.dao.LogsDao;
import com.worldartx.utils.GeneralUtils;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = LogManager.getLogger(LoginServlet.class);

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		String mobileRegEx ="^\\d{10}$";
		String emailRegEx ="^[A-Za-z0-9+_.-]+@(.+)$";
		if (request.getParameter("uname") != null) {
			username = request.getParameter("uname");
			logger.info("Username:"+username);
			mobnum =""; emailid = "";
		}
		if (request.getParameter("uname") != null) {
			Pattern pattern = GeneralUtils.getPatternCompiled(mobileRegEx);
			Matcher matcher = GeneralUtils.getMatcher(request.getParameter("uname"), pattern);
			if(matcher.matches()) {
			mobnum = request.getParameter("uname");
			logger.info("mobnum:"+mobnum);
			username =""; emailid = "";
			}
			
		}
		if (request.getParameter("uname") != null) {
			Pattern pattern = GeneralUtils.getPatternCompiled(emailRegEx);
			Matcher matcher = GeneralUtils.getMatcher(request.getParameter("uname"), pattern);
			if(matcher.matches()) {
			emailid = request.getParameter("uname");
			logger.info("email:"+emailid);
			mobnum =""; username = "";
			}
		}
		if (request.getParameter("password") != null) {
			password = request.getParameter("password");
		}

		boolean status = LoginDao.validate( mobnum,username, emailid, password);
		logger.info("Login Validation Status?:"+status);
		if (status) {
			
			HttpSession session = request.getSession(false);
			String from = "";
			if (session != null) {
				if (username != null) {
					from = username;
					session.setAttribute("uname", username);
				} else if (mobnum != null) {
					from = mobnum;
					session.setAttribute("mobno", mobnum);
				} else {
					from = emailid;
					session.setAttribute("email", emailid);
				}
				int stat = LogsDao.insertLogs(from,"LoginServlet.java","loggedin::: user:"+from,String.valueOf(new Date()));
				if(stat==1)
				response.sendRedirect("products.jsp");
				else
					response.sendRedirect("login.jsp?msg=login failed");
			} else {
				response.sendRedirect("login.jsp?msg=login failed");
			}
		}
	}

}

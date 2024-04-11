package com.worldartx.service;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
/* The Java file upload Servlet example */
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.worldartx.dao.LogsDao;
import com.worldartx.dto.Product;
import com.worldartx.utils.ProductUtils;

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/fileuploadservlet" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class FileUploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LogManager.getLogger(FileUploadServlet.class);

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Product p = new Product();
		String pid = "0";
		String path = "";
		String vendor = "";
		String artistname = "";
		String description = "";
		String usd = "";
		String exchange = "";
		String quantity = "";
		String inr = "";
		String catagory =  "";
		String cgst = "";
		String sgst = "";
		String total = "";
		String from = "";
		logger.info("################################Inside FileUploadService.....");
		HttpSession session = request.getSession(true);
		if (session.getAttribute("uname") != null) {
			from = (String) session.getAttribute("uname");
		} else if (session.getAttribute("mobnum") != null) {
			from = (String) session.getAttribute("mobnum");
		} else if (session.getAttribute("emailid") != null) {
			from = (String) session.getAttribute("mobnum");
		}

		if (request.getParameter("pid") == null) {
			pid = "0";
		}
		if (request.getParameter("pid") == "") {
			pid = "0";
		}
		if (request.getParameter("pid") != null && !request.getParameter("pid").isEmpty()) {
			pid = request.getParameter("pid");
			System.out.println("pid:" + pid);
		}
		if (request.getParameter("vendor") != null) {
			vendor = request.getParameter("vendor");
			System.out.println("vendor:" + vendor);
		}

		if (request.getParameter("artistname") != null) {
			artistname = request.getParameter("artistname");
			System.out.println("\tartistname:" + artistname);
		}

		if (request.getParameter("description") != null) {
			description = request.getParameter("description");
			System.out.println("\tdescription:" + description);
		}

		if (request.getParameter("usd") != null) {
			usd = request.getParameter("usd");
			System.out.println("\tusd:" + usd);
		}

		if (request.getParameter("exchange") != null) {
			exchange = request.getParameter("exchange");
			System.out.println("\texchange:" + exchange);
		}

		if (request.getParameter("quantity") != null) {
			quantity = request.getParameter("quantity");
			System.out.println("\tquantity:" + quantity);
		}

		if (request.getParameter("inr") != null) {
			inr = request.getParameter("inr");
			System.out.println("\tinr:" + inr);
		}
		if (request.getParameter("cname") != null) {
			catagory = request.getParameter("cname");
			System.out.println("\tcatagory:" + catagory);
		}
		if (request.getParameter("cgst") != null) {
			cgst = request.getParameter("cgst");
			System.out.println("\tcgst:" + cgst);
		}
		if (request.getParameter("sgst") != null) {
			sgst = request.getParameter("sgst");
			System.out.println("\tsgst:" + sgst);
		}
		if (request.getParameter("total") != null) {
			total = request.getParameter("total");
			System.out.println("\ttotal:" + total);
		}

		Part filePart = request.getPart("file");
		System.out.println("Part:" + filePart);
		String fileName = filePart.getSubmittedFileName();
		System.out.println("File Name:" + fileName);
		if (fileName.contains("image")) {
			String relativeWebPath = "photos/";
			String absoluteDiskPath = getServletContext().getRealPath(relativeWebPath);

			for (Part part : request.getParts()) {
				part.write(absoluteDiskPath + fileName);
			}

			if (!pid.equalsIgnoreCase("0")) {
				// updating product image details.
				logger.info("#############Updating Record####################");
				path = "";
				path = relativeWebPath + fileName;
				p.setPid(Long.parseLong(pid));
				p.setPath(path);
				p.setVendor(vendor);
				p.setArtistName(artistname);
				p.setDescription(description);
				p.setUsd(usd);
				p.setExchange(exchange);
				p.setQuantity(quantity);
				p.setInr(inr);
				p.setCatagory(catagory);
				p.setCgst(cgst);
				p.setSgst(sgst);
				p.setTotal(total);

				int status = ProductUtils.updateProductDetails(p);

				if (status > 0) {

					int stat = LogsDao.insertLogs(from, "FileUploadServlet.java", "updatingProduct:::: pid:"+pid+", vendor:"+vendor+",artist:"+artistname, String.valueOf(new Date()));
					if (stat == 1)
						response.sendRedirect("products.jsp");
					else
						response.sendRedirect("createproduct.jsp?msg=update failed");
				} else {
					response.sendRedirect("createproduct.jsp?msg=update failed");
				}

			} else {
				// inserting product image details.
				logger.info("#############Inserting Record####################");
				path = "";
				path = relativeWebPath + fileName;
				int status = ProductUtils.insertProductDetails(path, vendor, artistname, description, usd, exchange,
						quantity, inr,catagory,cgst,sgst,total);

				if (status > 0) {
					int stat = LogsDao.insertLogs(from, "FileUploadServlet.java", "insertingProduct:::: vendor:"+vendor+",artist:"+artistname, String.valueOf(new Date()));
					if (stat == 1)
						response.sendRedirect("products.jsp");
					else
						response.sendRedirect("createproduct.jsp?msg=insertion failed");

				} else {
					response.sendRedirect("createproduct.jsp?msg=insertion failed");
				}
			}

		} else {
			response.sendRedirect("createproduct.jsp?msg=image details are wrong");
		}
	}

}
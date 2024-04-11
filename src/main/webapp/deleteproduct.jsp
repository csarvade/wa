<%@page
	import="java.lang.*,java.io.*,java.util.*,com.worldartx.utils.*,java.sql.*,com.worldartx.dto.*,com.worldartx.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
<title>Insert title here</title>
<style type="text/css">
@media (min-width: 768px) {
        body {
          font-size:  0.5rem;
        }
      }
	  @media only screen and (max-width: 600px) {
   body {
   font-size:  0.5rem;
  }
	  html {
  font-size: 14px;
}
@media (min-width: 768px) {
  html {
    font-size: 16px;
  }
}
</style>
<link rel="shortcut icon" href="images/favicon.ico"
	style="border-top-width:thick" />
<link rel="stylesheet"
	href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
<%
	if (session.getAttribute("uname") != null || session.getAttribute("mobno") != null
			|| session.getAttribute("email") != null) {
		String uname = (String)session.getAttribute("uname");
		String mobno = (String)session.getAttribute("mobno");
		String email = (String)session.getAttribute("email");
		String from = "";
		if(uname!=null){
			from = uname;
		}else if(mobno!=null){
			from = mobno;
		}else if(email!=null){
			from = email;
		}
	%>
<%

String pid ="";
if(request.getParameter("pid")!=null){
	pid = request.getParameter("pid");
	LogsDao.insertLogs(from, "deleteproduct.jsp", "deleting pid:"+pid+",by:"+from, String.valueOf(new java.util.Date()));
	int deleteStatus=ProductUtils.deleteProductDetails(pid);
}
response.sendRedirect("products.jsp");
	}
 %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Result</title>
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<style type="text/css">
@media (min-width: 768px) {
        body {
          font-size: 3.5rem;
        }
      }
	  @media only screen and (max-width: 600px) {
   body {
   font-size: 3.5rem;
  }
	  html {
  font-size: 14px;
}
@media (min-width: 768px) {
  html {
    font-size: 16px;
  }
}</style>
</head>
<body>
<% String msg = (String)request.getAttribute("message");
   out.println(msg);
%>
</body>
</html>
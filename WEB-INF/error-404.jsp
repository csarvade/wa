<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Page Not found</title>
</head>
<body>
    <p align="center">
    <%
        out.println("Requested resource: " + request.getRequestURL()+ " not found");
    %></p>
<br/>

    <p align="center">
<a href="http://www.worldartx.com"><h1>Back To Home</h1></a>
 </p>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Create Product | Worldartx4U</title>
<link rel="stylesheet" src="css/_navbar.scss" />
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/jquery-slim.min.js"></script>
<script
	src="js/popper.min.js"></script>
<script
	src="js/bootstrap.min.js"></script>

 <script type="text/javascript">
	$(document).ready(function() {
		$('#productDtTableForCreating').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script> 
</head>
<link rel="shortcut icon" href="images/favicon.ico"
	style="border-top-width:thick" />
<link rel="stylesheet"
	href="css/bootstrap.min.css"/>
<style type="text/css">
.custom-file-label {
	position: absolute;
	top: 33px !important;
	right: 0;
	left: 0;
	z-index: 1;
	height: calc(2.25rem rem + 2px);
	padding: 0.375rem 0.75rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
}
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
<script src="js/jquery-slim.min.js"></script>
<script
	src="js/popper.min.js"></script>
<script
	src="js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript">
	function inrCalc() {
		var usd = document.getElementById("usd").value;
		console.log("usd:" + usd);
		var exchange = document.getElementById("exchange").value;
		console.log("exchange:" + exchange);
		var quantity = document.getElementById("quantity").value;
		console.log("quantity:" + quantity);
		var inr = document.getElementById("inr");
		var temp = (parseFloat(quantity) * parseFloat(usd) * parseFloat(exchange));
		console.log("temp:" + temp);
		inr.value = temp;
		

	}
	
function percentageCgst(partialValue, totalValue) {
   return (100 * partialValue) / totalValue;
} 
function percentageSgst(partialValue, totalValue) {
   return (100 * partialValue) / totalValue;
} 
	function getTotal(){
	var inrValue = document.getElementById("inr").value;
	var cgst = document.getElementById("cgst").value;
	var sgst = document.getElementById("sgst").value;
	
		var tempTwo =  percentageCgst(cgst,inrValue);
		console.log("tempTwo:" + tempTwo);
		cgst = tempTwo;
		
		
		var tempThree =  percentageSgst(sgst,inrValue);
		console.log("tempThree:" + tempThree);
		sgst  = tempThree;
		
		var total = document.getElementById("total");
		var tempFour =  parseFloat(inrValue) + parseFloat(tempTwo) + parseFloat(tempThree);
		//alert("tempFour:" + tempFour);
		total.value = tempFour; 

	}
</script>
<body>
	<%!int pid = 0;
	String path = "";
	String vendor = "";
	String artistname = "";
	String description = "";
	String usd = "";
	String exchange = "";
	String quantity = "";
	String inr = "";
	String catagory = "";
	String cgst = "";
	String sgst = "";
	String total = "";
%>
	<%
	if (session.getAttribute("uname") != null || session.getAttribute("mobno") != null
			|| session.getAttribute("email") != null) {
	%>

	<%
	if (request.getParameter("path") != null) {
		path = request.getParameter("path");
	}

	if (request.getParameter("vendor") != null) {
		vendor = request.getParameter("vendor");
	}

	if (request.getParameter("artistname") != null) {
		artistname = request.getParameter("artistname");
	}

	if (request.getParameter("description") != null) {
		description = request.getParameter("description");
	}

	if (request.getParameter("usd") != null) {
		usd = request.getParameter("usd");
	}

	if (request.getParameter("exchange") != null) {
		exchange = request.getParameter("exchange");
	}

	if (request.getParameter("quantity") != null) {
		quantity = request.getParameter("quantity");
	}

	if (request.getParameter("inr") != null) {
		inr = request.getParameter("inr");
	}
	if (request.getParameter("catagory") != null) {
		catagory = request.getParameter("catagory");
	}
	if (request.getParameter("cgst") != null) {
		cgst = request.getParameter("cgst");
	}
	if (request.getParameter("sgst") != null) {
		sgst = request.getParameter("sgst");
	}
	if (request.getParameter("total") != null) {
		total = request.getParameter("total");
	}
	%>
	<!-- 	<div
		class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
		<h5 class="my-0 mr-md-auto font-weight-normal">Worldartx4u</h5>
		<nav class="my-2 my-md-0 mr-md-3"></nav>

	</div> -->
	<table id="productDtTableForCreating"
		class="table table-striped table-bordered table-sm" cellspacing="0"
		width="100%">
		<tr>
			<td colspan="9" scope="row" align="right">
				<div>
					<nav class="navbar navbar-expand-lg navbar-light bg-light"
						style="padding: 0px !important;">

					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavDropdown">
						<ul class="navbar-nav">
							<li class="nav-item active"><a class="btn btn-warning"
								href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
							<p>&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>

							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
										<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
										<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>		<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>		<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>		<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							
						
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>

							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
										<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							<p align="right">&nbsp;</p>
							
							<li class="nav-item dropdown"><a
										class="btn btn-warning dropdown-toggle" href="#"
										id="navbarDropdownMenuLink" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false"
										style="align: right;"> Profile </a>
										<div class="dropdown-menu"
											aria-labelledby="navbarDropdownMenuLink">
											<a class="dropdown-item" href="products.jsp">Products</a> <a
												class="dropdown-item" href="logout">Logout</a>
										</div></li>

						</ul>
					</div>
					</nav>
				</div>
			</td>
		</tr>
	</table>

	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h1 class="display-4">Create Product</h1>
		<p class="lead">Quickly build an effective Product .</p>
	</div>

	<div class="container">
		<%
		if (request.getParameter("msg") != null) {
			out.println(request.getParameter("msg"));
		}
		%>
		<form name="product" id="product" class="needs-validation"
			action="fileuploadservlet" method="post"
			enctype="multipart/form-data" novalidate>
			<div class="form-row">
				<%
				if (request.getParameter("pid") != null) {
					pid = Integer.parseInt(request.getParameter("pid"));
					System.out.println("if pid update  Record:::::::::::::");
				%>


				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Product Id</label> <input
						type="text" class="form-control" id="pid" name="pid"
						placeholder="Product Id" value="<%=pid%>" readonly>
					<div class="valid-tooltip">Looks good!</div>
				</div>

				<div class="col-md-4 mb-3">
					<input type="file" class="custom-file-input" name="file"
						id="validatedCustomFile" value="<%=path%>" required> <label
						class="custom-file-label" size="50" for="validatedCustomFile">Choose
						file...</label>
					<div class="invalid-feedback">invalid custom file feedback</div>
				</div>
					<div class="col-md-4 mb-3">
			
					<label for="validationTooltip02">Catagory</label>
				
					 <select
						type="text" class="form-control" id="cname" name="cname"
						 onChange="inrCalc();" placeholder="Catagory"
						required><option value="Art & Crafts">Art & Crafts</option>
						<option value="Groceries">Groceries</option>
						<option value="Furniture">Furniture</option>
						<option value="Interior">Interior</option>
						<option value="Textile">Textile</option>
						</select>
								
					
				
						
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Vendor</label> <input type="text"
						class="form-control" id="vendor" name="vendor" value="<%=vendor%>"
						placeholder="Vendor" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Artist Name </label> <input
						type="text" class="form-control" id="artistname" name="artistname"
						value="<%=artistname%>" placeholder="Artist Name" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Description</label>
					<textarea class="form-control" id="description" name="description"
						placeholder="Description" required="required"><%=description%></textarea>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">USD</label> <input type="text"
						class="form-control" id="usd" name="usd" value="<%=usd%>"
						onBlur="inrCalc();" placeholder="USD" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>



				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Exchange</label> <input
						type="text" class="form-control" id="exchange" name="exchange"
						value="<%=exchange%>" placeholder="Exchange" onBlur="inrCalc();"
						required>
					<div class="valid-tooltip">Looks good!</div>

				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Quantity</label> <input
						type="number" class="form-control" id="quantity" name="quantity"
						value="<%=quantity%>" onChange="inrCalc();" placeholder="Quantity"
						required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">INR</label> <input type="text"
						class="form-control" id="inr" name="inr" placeholder="INR"
						value="<%=inr%>" onBlur="inrCalc();" required> auto calculated
					<div class="valid-tooltip">Looks good!</div>
				</div>
			
				
			<div class="col-md-4 mb-3">
					<label for="validationTooltip02">CGST</label> <input type="text"
						class="form-control" id="cgst" name="cgst" placeholder="cgst" value="<%=cgst%>"
						onChange="getTotal()" required> 
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">SGST</label> <input type="text"
						class="form-control" id="sgst" name="sgst" placeholder="SGST" value="<%=sgst%>"
					onChange="getTotal()" required> 
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">TOTAL</label> <input type="text"
						class="form-control" id="total" name="total" placeholder="TOTAL" value="<%=total%>" 
					onBlur="getTotal()" required> auto calculated
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3"> 
					<button class="btn btn-primary" onClick="actionCall();" value="Upload">Update</button>
				</div>
			</div>
			<%
			} else {
			System.out.println("Else Create new Record:::::::::::::");
			%>
			<div class="form-row">

				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Product Id</label> <input
						type="text" class="form-control" id="pid" name="pid"
						placeholder="Product Id" readonly>
					<div class="valid-tooltip">Looks good!</div>
				</div>

				<div class="col-md-4 mb-3">
					<input type="file" class="custom-file-input" name="file"
						id="validatedCustomFile" size="50" required> <label
						class="custom-file-label" for="validatedCustomFile">Choose
						file...</label>
					<div class="invalid-feedback">invalid custom file feedback</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Catagory</label> <select
						type="text" class="form-control" id="cname" name="cname"
						 onChange="inrCalc();" placeholder="Catagory"
						required><option value="Art & Crafts">Art & Crafts</option>
						<option value="Groceries">Groceries</option>
						<option value="Furniture">Furniture</option>
						<option value="Interior">Interior</option>
						<option value="Textile">Textile</option>
						</select>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Vendor</label> <input type="text"
						class="form-control" id="vendor" name="vendor"
						placeholder="Vendor" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Artist Name </label> <input
						type="text" class="form-control" id="artistname" name="artistname"
						placeholder="Artist Name" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Description</label>
					<textarea class="form-control" id="description" name="description"
						placeholder="Description" required="required"></textarea>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">USD</label> <input type="text"
						class="form-control" id="usd" name="usd" onBlur="inrCalc();"
						placeholder="USD" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>



				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Exchange</label> <input
						type="text" class="form-control" id="exchange" name="exchange"
						placeholder="Exchange" onBlur="inrCalc();" required>
					<div class="valid-tooltip">Looks good!</div>

				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">Quantity</label> <input
						type="number" class="form-control" id="quantity" name="quantity"
						onChange="inrCalc();" placeholder="Quantity" required>
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">INR</label> <input type="text"
						class="form-control" id="inr" name="inr" placeholder="INR" onBlur="inrCalc();"
						required> auto calculated
					<div class="valid-tooltip">Looks good!</div>
				</div>
					
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">CGST</label> <input type="text"
						class="form-control" id="cgst" name="cgst" placeholder="cgst" 
						onChange="getTotal()" required> 
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">SGST</label> <input type="text"
						class="form-control" id="sgst" name="sgst" placeholder="SGST" 
						   onChange="getTotal()" required> 
					<div class="valid-tooltip">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="validationTooltip02">TOTAL</label> <input type="text"
						class="form-control" id="total" name="total" placeholder="TOTAL"
					onBlur="getTotal()"	required> 
					<div class="valid-tooltip">Looks good!</div>
				</div>

				<div class="col-md-4 mb-3">
					<button class="btn btn-primary" value="Upload">Save</button>
				</div>
			</div>
			<%
				 
			}
			} else {
			session.invalidate();
			response.sendRedirect("logout.jsp");
			}
			%>

		</form>
	</div>





	<footer class="pt-4 my-md-5 pt-md-5 border-top">
	<div class="row">
		<div class="col-12 col-md">
			<small class="d-block mb-3 text-muted">&copy; 2014-2024</small>
		</div>
	</div>
	</footer>
	</div>



	<!-- Bootstrap core JavaScript
		================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/jquery-slim.min.js"><\/script>')
	</script>
 <script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.min.js"></script>
	<script>
		Holder.addTheme('thumb', {
			bg : '#55595c',
			fg : '#eceeef',
			text : 'Thumbnail'
		});
	</script>
</body>
</html>
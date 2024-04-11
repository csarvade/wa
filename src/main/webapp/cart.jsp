<%@page
	import="java.lang.*,java.io.*,java.util.*,com.worldartx.utils.*,java.sql.*,com.worldartx.dto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cart | worldartx4u.com</title>
<link rel="shortcut icon" href="images/favicon.ico"
	style="border-top-width:thick" />
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link href="default1.css" rel="stylesheet" type="text/css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="css/jquery.lightbox-0.5.css" media="screen" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
	$(function() {
		$('#gallery a').lightBox();
	});
</script>



<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 100%;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 3px;
	color: white;
	background-color: #FFC300;
	text-align: center;
	cursor: pointer;
	width: 45%;
	font-size: 12px;
}

.card button:hover {
	opacity: 0.7;
}

div.hline {
	border-bottom: solid #CCCCCC;
	border-bottom-width: 1px;
	width: 1000px;
}

div.img {
	margin: 5px;
	padding: 5px;
	border: 1px solid #0000ff;
	height: auto;
	width: auto;
	float: left;
	text-align: center;
}

div.img img {
	display: inline;
	margin: 5px;
	border: 1px solid #ffffff;
}

div.img a:hover img {
	border: 1px solid #0000ff;
}

div.desc {
	text-align: center;
	font-weight: normal;
	width: 120px;
	margin: 5px;
}

.style1 {
	color: #A0030A;
	font-weight: bold;
}
/* Let's get this party started */
::-webkit-scrollbar {
	width: 6px;
}

/* Track */
::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 2px rgba(0, 0, 0, 0.3);
}

/* Handle */
::-webkit-scrollbar-thumb {
	-webkit-border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.5);
}

@media ( min-width : 768px) {
	body {
		font-size: 0.8rem;
	}
}

@media only screen and (max-width: 600px) {
	body {
		font-size: 0.8rem;
	}
	html {
		font-size: 14px;
	}
	@media ( min-width : 768px) {
		html {
			font-size: 16px;
		}
	}
}

* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background: white;
}

/* Float four columns side by side */
.column {
	float: left;
	width: 25%;
	padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {
	margin: 0 -5px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
	.column {
		width: 100%;
		display: block;
		margin-bottom: 20px;
	}
}

/* Style the counter cards */
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 16px;
	text-align: center;
	background-color: #f1f1f1;
	margin-top: 16px;
}
</style>
</head>

<body>
	<%!String email = ""; 
	String mobileno="";
	int mobno = 0;
	String pid = "";
	int quantity = 0;
	double price = 0.0d;
	double cgst = 0.0d;
	double sgst = 0.0d;
	double total = 0.0d;
	String address = "";
	String city = "";
	String state = "";
	String country = "";
	int pincode = 0;
	java.util.Date orderdate = new java.util.Date();
	java.util.Date deliverydate = new java.util.Date();
	String paymenttype = "";
	String tid = "";
	String status = "";
	StringBuilder sb = new StringBuilder();%>

	<div id="wrapper">
		<!-- start page -->
		<div id="page">

			<!-- start content -->

			<div id="content">
				<div clas="row">
					<form action="#" method="post">

						<div id="gallery"
							style='display: inline-block; padding: 30; overflow: auto; max-width: 100%; max-height: 100%'>
							<ul>
								<%
								try {
									List<Cart> cList = (List<Cart>) CartUtils.getCartDetails(email, mobileno);
									if (cList.size() > 0) {
										int j = 1;
										for (int i = 0; i < cList.size(); i++) {
									Cart c = cList.get(i);
									if(i!=cList.size()-1){
									sb.append(c.getPid()+",");
									}
										}
									List<Product> pList = (List<Product>) ProductUtils.getProdcutDetails(sb.toString());
									for (int i = 0; i < pList.size(); i++) {
										Product p = pList.get(i);
								%>

								<div class="column">
									<div class="card">

										<li><a href="photos/image<%=j%>.jpg"> <img
												src="photos/image<%=j%>.jpg" width="150" height="150" alt=""
												title="$<%=p.getUsd()%>">
													<p>
														USD:<%=p.getUsd()%>
														&nbsp;INR:Rs
														<%=p.getInr()%>/-<br />
														<button class="btn btn-warrning"
															onclick="location.href='https://rzp.io/l/OiKj9zyijH?order_id=<%=p.getPid()%>';">Buy</button>
													</p></a></li>


										<li>
									</div>
								</div>
								<%
								j++;
								
								}
								} else {
								%>
								<div class="card">Empty Cart...!!!</div>
								<%
								}
								} catch (Exception e) {
								e.getMessage();
								}
								%>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page
	import="java.lang.*,java.io.*,com.worldartx.dto.Product,java.util.Date,java.util.*, java.lang.Math,com.worldartx.utils.*, java.lang.Math,com.worldartx.utils.ProductUtils,com.worldartx.utils.TrackerUtils,java.sql.*,com.worldartx.dto.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
	<script async
		src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1849998574742201"
		crossorigin="anonymous"></script>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<META NAME="description"
		content="Welcome to Worldartx,we are here for you,Fine arts, sculpture, animation, water color , acrylic, batiks, paintings, advertisement, web developement solutions. " />
	<meta name="keywords"
		content="Online Advertisement, online sponsering for artists, client advertisement, web solutions">

		<META NAME="AUTHOR"
			CONTENT="Chetankumar Sarvade, web developement in all cities,bangalore,india and world-wide" />
		<meta name="robots" CONTENT="index,follow" />
		<META NAME="GOOGLEBOT" CONTENT="INDEX, FOLLOW" />
		<meta name="revisit-after" content="7 days" />
		<meta http-equiv="Content-Type"
			content="text/html; charset=windows-1252" />

		<meta name="generator" content="Dreamweaver">

			<meta name="ProgId" content="FrontPage.Editor.Document" />
			<title>Welcome to Worldartx4u | India</title>
			<link rel="shortcut icon" href="images/favicon.ico"
	style="border-top-width:thick" />
<!-- <link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			 Arquivos utilizados pelo jQuery lightBox plugin
			<script type="text/javascript" src="js/jquery.js"></script>
			<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
			<link href="default1.css" rel="stylesheet" type="text/css"
				media="screen" />
			<link rel="stylesheet" type="text/css"
				href="css/jquery.lightbox-0.5.css" media="screen" />
					<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" /> -->
	
			<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
		<link href="default1.css" rel="stylesheet" type="text/css"
			media="screen" />
		<link rel="stylesheet" type="text/css"
			href="css/jquery.lightbox-0.5.css" media="screen" />
			<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

			<!-- Ativando o jQuery lightBox plugin -->
			<script type="text/javascript">
				$(function() {
					$('#gallery a').lightBox();
				});
			
			</script>
		<script type="text/javascript">
			function getOid(){
					var oidValue = document.getElementById("oid").value;
					var oid =document.getElementById("oid")
					oid.value=oidValue;
					console.log("Oid: "+oid); 
				}
			
var request;  
function sendInfo(oid)  
{  
var v=oid; 
var url="tracker.jsp?oid="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var oid=request.responseText;  
document.getElementById('oid-found').innerHTML=oid;  
}  
}  
  
</script>  

			<style>

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 100%;
	margin: auto;
	background-color: #ffffff !important;
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
.style2 {color: #FF6600}
            </style>

</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=229612767165927";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- start header -->
	<div id="header">
		<div id="logo"></div>
		<div id="menu">
			<ul id="main">
				<li class="current_page_item"><a href="index.jsp">Home</a></li>
				<li><a href="services.jsp">Services</a></li>

				<li><a href="AboutUs.jsp">About Us</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
				<li><a href="Help.jsp">Help</a></li>
				<li><a href="blog.jsp">Blog</a></li>
			</ul>
			<ul id="feed">

				<li><a href="login.jsp">Member Login</a></li>


			</ul>
		</div>

	</div>
	<!-- end header -->
	<div id="wrapper">
		<!-- start page -->
		<div id="page">

			<!-- start content -->
<marquee>
<span class="style2">Rates can fluctuate daily due to various economic factors and are typically calculated based on supply and demand.</span>
</marquee>
			<div id="content">
				<div clas="row">
					<form action="tracker.jsp" name ="mainform" method="get">

						<div id="gallery"
							style='display: inline-block; padding: 30; overflow: auto; max-width: 100%; max-height: 100%'>
							<ul>
								<%
								try {
									List<Product> pList = (List<Product>) ProductUtils.getProdcutDetails();
									if (pList.size() > 0) {
										int j = 1;
										for (int i = 0; i < pList.size(); i++) {
									Product p = pList.get(i);
								%>

								<div class="column">
									<div class="card">

										<li><img
												src="photos/image<%=j%>.jpg" width="150" height="150" alt=""
												title="$<%=p.getUsd()%>">
													<p>
														USD:$<%=p.getUsd()%>
														<br />INR:<img src="images/rs.png" width="20px" height="20px"/>
														<%=Math.round(Float.parseFloat(p.getTotal()))%>/-<br />Incl. Tax.
	<a target="_blank" href="#" onClick="sendInfo('<%=p.getPid()%>')">
<div class="razorpay-embed-btn"  data-url="https://pages.razorpay.com/pl_NoaGrZYXj9RH4V/view?order_id=<%=p.getPid()%>&amount=<%=Math.round(Float.parseFloat(p.getTotal())) %>&quantity=<%=p.getQuantity() %>&currency=INR" data-text="Pay Now"  data-color="#528FF0" data-size="small">

  <script>
    (function(){
      var d=document; var x=!d.getElementById('razorpay-embed-btn-js')
      if(x){ var s=d.createElement('script'); s.defer=!0;s.id='razorpay-embed-btn-js';
      s.src='https://cdn.razorpay.com/static/embed_btn/bundle.js';d.body.appendChild(s);
      } else{var rzp=window['__rzp__'];
      rzp && rzp.init && rzp.init()
      }
      })();
  </script>
</div>
												</a>	</p></li>


										<li>
									</div>
								</div>
																<%
								request.setAttribute("indexId", j);
								j++;
								}
								} else {
							
								%>
								
								<div class="row">
									<div class="card"> <marquee class="desc" style="azimuth:inherit;color:red" >Cart is currently offline...!!!</marquee>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li>
								<a href="photos/image1.jpg"><img src="photos/image1.jpg"
									width="100" height="60" alt="" title="$239.88" /> </a>
								</li>
								</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image2.jpg"> <img
										src="photos/image2.jpg" width="100" height="60" alt=""
										title="$287.88" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image3.jpg"> <img
										src="photos/image3.jpg" width="100" height="60" alt=""
										title="$287.88" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image4.jpg"> <img
										src="photos/image4.jpg" width="100" height="60" alt=""
										title="$239.90" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image5.jpg"> <img
										src="photos/image5.jpg" width="100" height="60" alt=""
										title="$127.95" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image6.jpg"> <img
										src="photos/image6.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image7.jpg"> <img
										src="photos/image7.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image8.jpg"> <img
										src="photos/image8.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image9.jpg"> <img
										src="photos/image9.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image10.jpg"> <img
										src="photos/image10.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image11.jpg"> <img
										src="photos/image11.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image12.jpg"> <img
										src="photos/image12.jpg" width="100" height="60" alt=""
										title="$127.95" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image13.jpg"> <img
										src="photos/image13.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image14.jpg"> <img
										src="photos/image14.jpg" width="100" height="60" alt=""
										title="" />
										
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image15.jpg"> <img
										src="photos/image15.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image16.jpg"> <img
										src="photos/image16.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image17.jpg"> <img
										src="photos/image17.jpg" width="100" height="60" alt=""
										title="$399.84" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image18.jpg"> <img
										src="photos/image18.jpg" width="100" height="60" alt=""
										title="$351.86" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image19.jpg"> <img
										src="photos/image19.jpg" width="100" height="60" alt=""
										title="$319.87" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image20.jpg"> <img
										src="photos/image20.jpg" width="100" height="60" alt=""
										title="$287.88" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image21.jpg"> <img
										src="photos/image21.jpg" width="100" height="60" alt=""
										title="$95.96" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image22.jpg"> <img
										src="photos/image22.jpg" width="100" height="60" alt=""
										title="$319.87" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image23.jpg"> <img
										src="photos/image23.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image24.jpg"> <img
										src="photos/image24.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image25.jpg"> <img
										src="photos/image25.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image26.jpg"> <img
										src="photos/image26.jpg" width="100" height="60" alt=""
										title="$127.95" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image27.jpg"> <img
										src="photos/image27.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image28.jpg"> <img
										src="photos/image28.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image29.jpg"> <img
										src="photos/image29.jpg" width="100" height="60" alt=""
										title="$127.95" />
								</a></li>
	                            </div>
								</div>
								<div class="column">
									<div class="card">

								<li><a href="photos/image30.jpg"> <img
										src="photos/image30.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image31.jpg"> <img
										src="photos/image31.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image32.jpg"> <img
										src="photos/image32.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image33.jpg"> <img
										src="photos/image33.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image34.jpg"> <img
										src="photos/image34.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image35.jpg"> <img
										src="photos/image35.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image36.jpg"> <img
										src="photos/image36.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image37.jpg"> <img
										src="photos/image37.jpg" width="100" height="60" alt=""
										title="$159.94" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image38.jpg"> <img
										src="photos/image38.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image39.jpg"> <img
										src="photos/image39.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image40.jpg"> <img
										src="photos/image40.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image41.jpg"> <img
										src="photos/image41.jpg" width="100" height="60" alt=""
										title="$79.97" />
								</a></li>	</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image42.jpg"> <img
										src="photos/image42.jpg" width="100" height="60" alt=""
										title="$47.98" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image43.jpg"> <img
										src="photos/image43.jpg" width="100" height="60" alt=""
										title="$95.96" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image44.jpg"> <img
										src="photos/image44.jpg" width="100" height="60" alt=""
										title="$127.95" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image45.jpg"> <img
										src="photos/image45.jpg" width="100" height="60" alt=""
										title="$111.96" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">

								<li><a href="photos/image48.jpg"> <img
										src="photos/image48.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>	</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image49.jpg"> <img
										src="photos/image49.jpg" width="100" height="60" alt=""
										title="" />
								</a></li>
									</div>
								</div>
								<div class="column">
									<div class="card">
								<li><a href="photos/image50.jpg"> <img
										src="photos/image50.jpg" width="100" height="60" alt=""
										title="" />
								</a></li></div></div>
								<%
								}
								} catch (Exception e) {
								e.getMessage();
								}
								%>
							</ul>
					</form>
				</div>
				<div class="post">
					<h1 class="title">
						<a href="#">Welcome to Worldartx4u.com!</a>
					</h1>
					<p class="byline">
						<small>Posted on 2014 by <a href="chetankumarns.jsp">Chetankumar</a></small>
					</p>
					<div class="entry">
						<p align="justify">
							<span class="style1">Worldartx4u.com</span> specifically and
							technically specializes in sponsoring artists, advertising client
							business from different cultural backgrounds and various
							countries. In general artists create artwork that consist of rare
							and original oil, mix media, acrylic, and batiks paintings.
						</p>
						<p>
							<a href="http://www.worldartx4u.com">Our Mission:</a><br /> Is
							to build a direct relationship with the artists and art lovers.
						</p>
						<p align="justify">
							<a href="http://www.worldartx4u.com">Our Aim:</a><br /> Is to
							create cultural awareness and bring people together through art
							and an appreciation of cultural similarities and differences
							throughout the world.
						</p>
						<p>
							<a href="http://www.worldartx4u.com">Worldartx4u.com</a>. is for
							online buying gifts, fine arts, watter colors, acrylic,
							sculpture..etc.
						</p>
						<p>
							<a href="http://www.worldartx4u.com">Worldartx4u.com</a> is to
							online sponsoring for artist, client adevertisement, web
							solutions,..etc.:)
						</p>
						<p class="links">
							<a href="http://www.worldartx4u.com" class="more">&laquo;&laquo;&nbsp;&nbsp;Read
								More&nbsp;&nbsp;&raquo;&raquo;</a>
						</p>
					</div>
				</div>
				<div class="post">
					<h2 class="title">
						<a href="http://www.worldartx4u.com">Worldartx4u Tags</a>
					</h2>
					<p class="byline">
						<small>Posted on 2014 by <a href="chetankumarns.jsp">Chetankumar</a></small>
					</p>
					<div class="entry">
						<h3>Artist Names</h3>
						<blockquote>
							<p>&#8220;Ganesh Irrappa Mayachari, Vinay B Tuljappa, Manju
								R, Ashwini N, Rashmi M.S.&#8221;</p>
						</blockquote>
						<h3>Art Media:</h3>
						<ul>
							<li>Watter Color.</li>
							<li>Acrylic.</li>
							<li>Graphic Print Media.</li>
						</ul>
						<h3>Service Catagories:</h3>
						<ul>
							<li>Interior Designing</li>
							<li>Artistic Work</li>
							<li>Fashions</li>
							<li>Textile Designs</li>
							<li>Ethinic Wear</li>
							<li>T-Shirts Polo for Mens</li>
							<li>Event Management</li>
							<li>Cataring Sevices</li>
						</ul>
						<h3>Epic:</h3>
						<ul>
							<li>
								<div align="justify">Fine art, from the 17th century on,
									has meant art forms developed primarily for aesthetics,
									distinguishing them from applied arts that also have to serve
									some practical function. Historically, the five main fine arts
									were painting, sculpture, architecture, music and poetry, with
									minor arts including drama and dance.</div>
							</li>
							<li>
								<div align="justify">Acrylic paint is fast-drying paint
									containing pigment suspension in acrylic polymer emulsion.
									Acrylic paints can be diluted with water, but become
									water-resistant when dry. Depending on how much the paint is
									diluted (with water) or modified with acrylic gels, media, or
									pastes, the finished acrylic painting can resemble a watercolor
									or an oil painting, or have its own unique characteristics not
									attainable with other media..</div>
							</li>
							<li>
								<div align="justify">Watercolor (American English) or
									watercolour (Commonwealth and Ireland), also aquarelle from
									French, is a painting method. A watercolor is the medium or the
									resulting artwork in which the paints are made of pigments
									suspended in a water-soluble vehicle. The traditional and most
									common support for watercolor paintings is paper; other
									supports include papyrus, bark papers, plastics, vellum or
									leather, fabric, wood, and canvas. Watercolors are usually
									transparent, and appear luminous because the pigments are laid
									down in a relatively pure form with few fillers obscuring the
									pigment colors. Watercolor can also be made opaque by adding
									Chinese white. In East Asia, watercolor painting with inks is
									referred to as brush painting or scroll painting. In Chinese,
									Korean, and Japanese painting it has been the dominant medium,
									often in monochrome black or browns. India, Ethiopia and other
									countries also have long traditions. Fingerpainting with
									watercolor paints originated in China..</div>
							</li>
						</ul>
						<p class="links">
							<a href="http://www.worldartx4u.com" class="more">&laquo;&laquo;&nbsp;&nbsp;Read
								More&nbsp;&nbsp;&raquo;&raquo;</a>
						</p>
					</div>
				</div>
				<div class="post">
					<h2 class="title">
						<a href="https://www.facebook.com/worldartx">Lovely arts </a>
					</h2>
					<p class="byline">
						<small>Posted on 2014 by <a href="chetankumarns.jsp">Chetankumar</a></small>
					</p>
					<div class="entry">
						<p>Creative Art.</p>
						<p class="links">
							<a href="https://twitter.com/worldartx4u" class="more">&laquo;&laquo;&nbsp;&nbsp;Read
								More&nbsp;&nbsp;&raquo;&raquo;</a>
						</p>
					</div>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end page -->
	</div>


	<table bgcolor="#fff" width=999px; align="center";>
		<tr>
			<td><h1>&nbsp;Developer and Artists:</h1></td>
		</tr>
	</table>



	<table bgcolor="#ffffff" width=999px; align="center";>
		<tr>
			<td colspan="3"><div class="img">
					<a target="_blank" href="chetankumarns.jsp"> <img
						src="artist/cs.jpg" alt="Chetankumarns" width="110" height="110"></a>
					<div class="desc">Web Design and Developer</div>
				</div>
				<div class="img">
					<a target="_blank" href="ganeshim.jsp"> <img
						src="artist/gm.jpg" alt="Ganeshim" width="110" height="110"></a>
					<div class="desc">Artist From Cava (Mysore University)</div>
				</div>
				<div class="img">
					<a target="_blank" href="vinaybt.jsp"> <img src="artist/vb.jpg"
						alt="Vinaybt" width="110" height="110"></a>
					<div class="desc">Artist From Cava (Mysore University)</div>
				</div>
				<div class="img">
					<a target="_blank" href="manjur.jsp"> <img src="artist/mr.jpg"
						alt="Manjur" width="110" height="110"></a>
					<div class="desc">Artist From Cava (Mysore University)</div>
				</div>

				<div class="img">
					<a target="_blank" href="ashwinin.jsp"> <img
						src="artist/an.jpg" alt="Ashwinin" width="110" height="110"></a>
					<div class="desc">Artist From DMS(Mysore University)</div>
				</div>
				<div class="img">
					<a target="_blank" href="rashmims.jsp"> <img
						src="artist/rr.jpg" alt="Rashmims" width="110" height="110"></a>
					<div class="desc">Artist From Kalanikethana, Mysore( Hampi
						University).</div>
				</div>





				<table bgcolor="#fff" ; align="center">
					<tr>
						<td>
							<div class="fb-like" data-href="http://www.worldartx4u.com"
								data-layout="standard" data-action="like" data-show-faces="true"
								data-share="true"></div>
						</td>
						<td><a href="https://twitter.com/share"
							class="twitter-share-button"
							data-url="http://bit.ly/twitter-api-announce"
							data-counturl="http://groups.google.com/group/twitter-api-announce"
							data-lang="en" data-count="vertical">Tweet</a> <script>
								!function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0];
									if (!d.getElementById(id)) {
										js = d.createElement(s);
										js.id = id;
										js.src = "https://platform.twitter.com/widgets.js";
										fjs.parentNode.insertBefore(js, fjs);
									}
								}(document, "script", "twitter-wjs");
							</script></td>
						<td><script src="//platform.linkedin.com/in.js"
								type="text/javascript">
							lang: en_US
						</script> <script type="IN/Share" data-counter="top"></script></td>

					</tr>
				</table>

				<table bgcolor="#fff" ; align="center">
					<tr>

						<td><p class="link">
								<div class="g-plusone" data-annotation="inline" data-width="300"></div>

								<!-- Place this tag after the last +1 button tag. -->
								<script type="text/javascript">
									(
											function() {
												var po = document
														.createElement('script');
												po.type = 'text/javascript';
												po.async = true;
												po.src = 'https://apis.google.com/js/platform.js';
												var s = document
														.getElementsByTagName('script')[0];
												s.parentNode
														.insertBefore(po, s);
											})();
								</script>
							</p></td>


					</tr>
                 
		<div id="oid-found" class="alert alert-success" role="alert" style="position: absolute;left: 0px;top: 0px;width:150px;z-index: 400; font-color:red;"/>
					

				</table>
				<hr />
				<div id="footer">
					<p class="copyright">&copy;&nbsp;&nbsp;2014 All Rights
						Reserved.</p>
					<p class="link"></p>
				</div>
</body>
</html>

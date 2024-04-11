<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.ico"
	style="border-top-width:thick" />
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=text],input[type=text],input[type=text] {
	width: 100%;
	padding: 12px 10px;
	margin: 2px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
.btn-group-lg>.btn, .btn-lg {
    padding: 0.7rem 1rem !important;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: 0.3rem;
}
button {
	background-color: #0937d9;
	color: white;
	padding: 14px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 9%;
	border-radius: 20%;
}

.container {
	padding: 16px;
}

span.psw,span.mobno,span,email,span.address {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 5px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 38%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw,span,mobno,span.email,span.address {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
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
</head>
<body>


<%if(request.getParameter("msg")!=null){
	
	out.print(request.getParameter("msg"));
}	%>
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

<button  id="login" name="login" class="btn btn-warning" onClick="document.getElementById('id01').style.display='block'"
		style="width: 100%;">Login</button> &nbsp;
	<button class="btn btn-warning" onClick="document.getElementById('id02').style.display='block'"
		style="width: 100%;">Register</button>
						</ul>
					</div>
					</nav>
				</div>
	

	<div id="id01" class="modal">


		<form class="modal-content animate form-control" action="login" method="post">
			<div class="imgcontainer">
				<span onClick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="images/img_avatar2.png" alt="Avatar" class="avatar">
			</div>

			<div class="container form-group">
				<label for="uname"><b>Username/Mobile Number/Email</b></label> <input type="text"
					placeholder="Enter Username" data-toggle="tooltip" tooltip="Enter Username"  name="uname" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" data-toggle="tooltip" tooltip="Enter Password" name="password" required>

				<button type="submit" class="btn btn-warning" >Login</button>
			</div>

	<!-- 		<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div> -->
		</form>
	</div>

	<div id="id02" class="modal">

		<form class="modal-content animate form-control" action="register" method="post">
			<div class="imgcontainer">
				<span onClick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="images/img_avatar2.png" alt="Avatar" class="avatar">
			</div>

			<div class="container form-group">
				<label for="mobno"><b>Mobile Number</b></label> <input type="text"
					placeholder="Enter Mobile Number" name="mobno" required> <label
					for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>
					<label
					for="psw"><b>Email</b></label> <input type="text"
					placeholder="Enter Email" name="email" required>
					<label
					for="psw"><b>Address</b></label> <input type="text"
					placeholder="Enter Address" name="address" required> 

				<button type="submit" class="btn btn-warning" >Register</button>

			</div>


		</form>
	</div>

	<script>
// Get the modal
var modal = document.getElementById('id01') ||document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}



  document.addEventListener("DOMContentLoaded", function(event) { 
    document.getElementById("login").click();
 });

</script>

</body>
</html>
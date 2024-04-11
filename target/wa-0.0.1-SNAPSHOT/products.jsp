<%@page
	import="java.lang.*,java.io.*,com.worldartx.dto.Product,java.util.Date,java.util.*, java.lang.Math,com.worldartx.utils.*, java.lang.Math,com.worldartx.utils.ProductUtils,com.worldartx.utils.TrackerUtils,java.sql.*,com.worldartx.dto.*"%>
<html>
<head>
<meta name="google-adsense-account" content="ca-pub-1849998574742201">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Products</title>
</head>
<link rel="stylesheet" src="css/_navbar.scss" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"
	media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/jquery-slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#productsDtTable').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>
<style type="text/css">
table {width: 100%;}
td
{
 max-width: 0;
 overflow: hidden;
 text-overflow: ellipsis;
 white-space: nowrap;
}
@media ( min-width : 768px) {
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
	@media ( min-width : 768px) {
		html {
			font-size: 16px;
		}
	}
}
</style>
<body>
	<%
	if (session.getAttribute("uname") != null || session.getAttribute("mobno") != null
			|| session.getAttribute("email") != null) {
	%>
	<form action="#" method="get">
		<table id="productsDtTable"
			class="table table-striped table-bordered table-sm" cellspacing="0"
			width="100%">
			<tr>
				<td colspan="9" scope="row" align="right">
					<div>
						<nav class="navbar navbar-expand-lg navbar-light bg-light"
							style="padding: 0px !important;">

							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNavDropdown"
								aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNavDropdown">
								<ul class="navbar-nav">
									<li class="nav-item active"><a class="btn btn-warning"
										href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
									<p>&nbsp;</p>
									<li class="nav-item"><a
										href="createproduct.jsp?uname=<%=session.getAttribute("uname")%>&mobnum=<%=session.getAttribute("mobnum")%>&email=<%=session.getAttribute("email")%>"
										class="btn btn-warning">Create Product</a></li>
									<p align="right">&nbsp;</p>
									<li class="nav-item"><a class="btn btn-warning"
										href="searchorder.jsp">Track Product</a></li>


									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>

									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
									<p align="right">&nbsp;</p>
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
			<tr>
				
				<th>Product Id</th>
				<th colspan="4">Path</th>
				<th>Vendor</th>
				
				<th>Description</th>
				<th colspan="2">Action</th>
			</tr>

			<%
			try {
				List<Product> pList = (List<Product>) ProductUtils.getProdcutDetails();
				if (pList.size() > 0) {
					for (int i = 0; i < pList.size(); i++) {
				Product p = pList.get(i);
			%>

			<tr>
			
				<td scope="row"><%=p.getPid()%></td>
				<td scope="row"  colspan="4"><div class="column">
						<div class="card">

							<img src="<%=p.getPath()%>" width="150" height="150" alt="" title="$<%=p.getUsd()%>" />
									<p>
										USD:$<%=p.getUsd()%>
										<br />INR:<img src="images/rs.png" width="20px" height="20px" />
										<%=Math.round(Float.parseFloat(p.getTotal()))%>/-<br />Incl.
										Tax. <a target="_blank" href="#"
											onClick="sendInfo('<%=p.getPid()%>')">
											<div class="razorpay-embed-btn"
												data-url="https://pages.razorpay.com/pl_NoaGrZYXj9RH4V/view?order_id=<%=p.getPid()%>&amount=<%=Math.round(Float.parseFloat(p.getTotal())) %>&quantity=<%=p.getQuantity() %>&currency=INR"
												data-text="Pay Now" data-color="#528FF0" data-size="small">

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
										</a>
									</p>
						</div>
					</div></td>
				<td scope="row"><%=p.getVendor()%></td>
				
				<td scope="row"><%=p.getDescription()%></td>
				<td scope="row"><a type="button" class="btn btn-primary"
					href="createproduct.jsp?pid=<%=p.getPid()%>&path=<%=p.getPath()%>&vendor=<%=p.getVendor()%>&artistname=<%=p.getArtistName()%>&description=<%=p.getDescription()%>&usd=<%=p.getUsd()%>&exchange=<%=p.getExchange()%>&quantity=<%=p.getQuantity()%>&inr=<%=p.getInr()%>&catagory=<%=p.getCatagory()%>&cgst<%=p.getCgst()%>&sgst=<%=p.getSgst()%>&total=<%=p.getTotal()%>&uname=<%=session.getAttribute("uname")%>&mobnum=<%=session.getAttribute("mobnum")%>&email=<%=session.getAttribute("email")%>">Update</a></td>
				<td scope="row"><a type="button" class="btn btn-primary"
					href="deleteproduct.jsp?pid=<%=p.getPid()%>&uname=<%=session.getAttribute("uname")%>&mobnum=<%=session.getAttribute("mobnum")%>&email=<%=session.getAttribute("email")%>">Delete</a></td>
			</tr>
			<%
			}
			}
			} catch (Exception e) {
			e.getMessage();
			}
			} else {
			session.invalidate();
			response.sendRedirect("logout.jsp");
			}
			%>
		</table>
	</form>
</body>
</html>
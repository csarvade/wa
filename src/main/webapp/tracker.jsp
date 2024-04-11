<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page
	import="java.lang.*,java.io.*,java.util.Date,java.util.*,com.worldartx.utils.TrackerUtils,com.worldartx.utils.GeneralUtils,java.sql.*,com.worldartx.dto.ProductTracker"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Tracker| worldarartx4u.com</title>

<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 100%;
	margin: auto;
	text-align: center;
	font-family: arial;
	background-color: #ffffff !important;
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

.wrapper {
	 width: 330px;
	 font-family: 'Helvetica';
	 font-size: 14px;
}
 .StepProgress {
	 position: relative;
	 padding-left: 45px;
	 list-style: none;
}
 .StepProgress::before {
	 display: inline-block;
	 content: '';
	 position: absolute;
	 top: 0;
	 left: 15px;
	 width: 10px;
	 height: 100%;
}
 .StepProgress-item {
	 position: relative;
	 counter-increment: list;
}
 .StepProgress-item:not(:last-child) {
	 padding-bottom: 20px;
}
 .StepProgress-item::before {
	 display: inline-block;
	 content: '';
	 position: absolute;
	 left: -30px;
	 height: 100%;
	 width: 10px;
}
 .StepProgress-item::after {
	 content: '';
	 display: inline-block;
	 position: absolute;
	 top: 0;
	 left: -37px;
	 width: 20px;
	 height: 20px;
	 border: 2px solid #CCC;
	 border-radius: 50%;
	 background-color: #FFF;
}
 .StepProgress-item.is-done::before {
	 border-left: 2px solid green;
}
 .StepProgress-item.is-done::after {
	 content: "?";
	 font-size: 13px;
	 color: #FFF;
	 text-align: center;
	 border: 2px solid green;
	 background-color: green;
}
 .StepProgress-item.current::before {
	 border-left: 2px solid green;
}
 .StepProgress-item.current::after {
	 content: counter(list);
	 padding-top: 1px;
	 width: 25px;
	 height: 25px;
	 top: -4px;
	 left: -40px;
	 font-size: 14px;
	 text-align: center;
	 color: green;
	 border: 2px solid green;
	 background-color: white;
}
 .StepProgress strong {
	 display: block;
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
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
  

<body>
  <% 
  try{
  //insertion part start
  	
					if(request.getParameter("oid")!=null){
						Long oid = 0L;
						oid = Long.parseLong(request.getParameter("oid"));
					String edate =	GeneralUtils.getDate(16);
					String status = "Captured";
					int stat = TrackerUtils.insertTrackerDetails(oid, String.valueOf(new Date()), edate, status);
					System.out.println("$$$$$From Tracker Order Created with Order Id:"+oid+ "\t Please note the order id... ");
    //insertion part end
					}
	  Long oid=Long.parseLong(request.getParameter("val"));  
       
	  List<ProductTracker> ptList = TrackerUtils.getProdcutTrackerDetails(oid);
	  if(ptList.size()>0){
		  for(int i=0;i<ptList.size();i++){
	      ProductTracker pt  = ptList.get(i);
	 

%> 
<form class="form-inline">
<div class="container">
<div class="form-group row"> 
  <div class="column" style="display:block;color:#FF9933">
	 
									<h1 style="color:#FF6600">Product Delevery Tracking</h1>
									
<h5>Order Id:<%=pt.getOid()%>&nbsp;Ordered on: <strong><%=pt.getDdate() %></strong>  & Expected Delivery Date:<strong><%=pt.getEdate() %></strong>  </h5>
</div>
	</div>
<div style="margin-left:10px">
<div class="wrapper">
<ul class="StepProgress">
<% if(pt.getStatus().equalsIgnoreCase("Captured")){ %>
  <div class="StepProgress-item is-done"><strong>Order Captured</strong></div>
    <%}else{ %>
	  <div class="StepProgress-item is-done" style="background-color: #E4F6DF;opacity: 0.5;"><strong>Order Not Captured</strong></div>
	  
 <% }  if(pt.getStatus().equalsIgnoreCase("Packed")){ %>
  <div class="StepProgress-item is-done"><strong>Order Packed</strong>
  
  <%}else { %>
	  <div class="StepProgress-item is-done" style="background-color: #E4F6DF;opacity: 0.5;"><strong>Order Not Packed</strong></div>
  <%  } if(pt.getStatus().equalsIgnoreCase("Shipped")){ %>
  
  <div class="StepProgress-item is-done"><strong>Order Shipped</strong></div>
   <%}else{ %>
	  <div class="StepProgress-item is-done" style="background-color: #E4F6DF;opacity: 0.5;"><strong>Order Not Shipped</strong></div>
    <%  }if(pt.getStatus().equalsIgnoreCase("Out for Delivery")){ %>
  <div class="StepProgress-item is-done"><strong>Order Out for Delivery</strong></div>
   <%}else{ %>
	  <div class="StepProgress-item is-done" style="background-color: #E4F6DF;opacity: 0.5;"><strong>Order Not Out for Delivery</strong></div>
  <%  } if(pt.getStatus()=="Delivered"){ %>
  <div class="StepProgress-item current"><strong>Order Delivered</strong></div>
<%}else { %>
	  <div class="StepProgress-item is-done" style="background-color: #E4F6DF;opacity: 0.5;"><strong>Order Not Delivered</strong></div>
	  <%  } if(pt.getStatus()=="Cancelled"){ %>
  <div class="StepProgress-item current"><strong>Order Cancelled</strong></div>
 <%  } if(pt.getStatus()=="Refund"){ %>
  <div class="StepProgress-item current"><strong>Order Refund</strong></div>
<%}}%>
</ul>
<img src="images/order.gif" width="100%" height="36%" border="1px" />
</div>

</div>
 <%}else{%>
	   <div class="card"><strong>Order Empty</strong></div>
	   <%} 
	  }catch(Exception e){e.getMessage();} %>
	  </form>
	 
</body>
 <footer class="pt-4 my-md-5 pt-md-5 border-top">
	<div class="row">
		<div class="col-12 col-md">
			<small class="d-block mb-3 text-muted">&copy; 2014-2024</small>
		</div>
	</div>
	</footer>
</html>

<html>
<head>

<title>Hotels & Restaurent Websites</title>

<script>

<!--
function land(ref, target) { lowtarget=target.toLowerCase();
if (lowtarget=="_self") {window.location=loc;}
else {if (lowtarget=="_top") {top.location=loc;}
else {if (lowtarget=="_blank") {window.open(loc);}
else {if (lowtarget=="_parent") {parent.location=loc;}
else {parent.frames[target].location=loc;};
}}}
}
function jump(menu)
{
ref=menu.choice.options[menu.choice.selectedIndex].value;
splitc=ref.lastIndexOf("*");
target="";
if (splitc!=-1)
{loc=ref.substring(0,splitc);
target=ref.substring(splitc+1,1000);}
else {loc=ref; target="iframe2";}; //name of targeted frame is entered this line
if (ref != "") {land(loc,target);}
}
//-->
</script>

</head>
<body>
<table id="Table_01" width="6666"  border="0" cellpadding="0" cellspacing="0">
	
	<tr>
		<td>
			<img src="images/home_02.jpg" width="503" height="32" alt="home_bak1"></td>
		<td>
			<a href="http://www.worldartx.com"><img src="images/home_03.jpg" width="51" height="32" alt="home_link_3"></a></td>
		<td>
			<img src="images/home_01-04.jpg" width="6112" height="32" alt="home_bac1"></td>
	</tr></table>

<form action="dummy" method="post">
<h5 align = "center";> Hotel & Restaurent Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.worldartx.com">Worldartx.com</option>
<option value="http://www.ihg.com">Ihg.com</option>
<option value="http://www.choicehotels.com">Choicehotels.com</option>
<option value="http://www.tripadvisor.in">Tripadvisor.in</option>
<option value="http://www.travelocity.com">Travelocity.com</option>
<option value="http://www.hotwire.com">Hotwire.com</option>
<option value="http://www3.hilton.com">3.hilton.com</option>
<option value="http://www.priceline.com">Priceline.com</option>
<option value="http://www.hotelscombined.in">Hotelscombined.in</option>
<option value="http://www.tajhotels.com">Tajhotels.com</option>
<option value="http://www.theleela.com">Theleela.com</option>
<option value="http://www.kayak.co.in">Kayak.co.in</option>
<option value="http://www.oberoihotels.com">Oberoihotels.com</option>
<option value="http://www.in.hotels.com">In.hotels.com</option>
<option value="http://www.booking.com">Booking.com</option>
<option value="http://www.cleartrip.com">Cleartrip.com</option>
<option value="http://www.trivago.in">Trivago.in</option>


</select></h5></form>

<p>
<iframe
name="iframe2"
width="1600"
height="800"
src="http://cnn.com"
frameborder="1"
scrolling="yes" >
</iframe>
</body>
</html>
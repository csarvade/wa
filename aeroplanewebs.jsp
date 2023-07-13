<html>
<head>

<title> Airoplane Websites</title>

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
<h5 align = "center";> Aeroplanes Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.aviationtrader.com.au/">Aviationtrader.com.au/</option>
<option value="http://www.bombardier.com/en/home.html">Bombardier.com</option>
<option value="http://www.extraaircraft.">Extraaircraft.com</option>
<option value="http://www.avbuyer.com">Avbuyer.com</option>
<option value="http://www.boeing.com">Boeing.com</option>
<option value="http://www.aso.com/">Aso.com</option>
<option value="http://www.aircraftinformation.info">Aircraftinformation.info</option>
<option value="http://www.solarimpulse.com">Solarimpulse.com</option>
<option value="http://www.cirrusaircraft.com">Cirrusaircraft.com</option>
<option value="http://www.pilatus-aircraft.com">Pilatus-aircraft.com</option>
<option value="http:/www.diamondaircraft.com/">Diamondaircraft.com</option>
<option value="http://www.avitop.com">Avitop.com</option>
<option value="http://www.planefinder.net">Planefinder.net</option>
<option value="http://www.planeandpilotmag.com">Planeandpilotmag.com</option>
<option value="http://www.airplanegeeks.com">Airplanegeeks.com</option>
<option value="http://www.elance.com">Elance.com</option>
<option value="http://www.seatguru.com">Seatguru.com</option>


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
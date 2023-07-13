<html>
<head>

<title> College Websites</title>

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
<h5 align = "center";> Weather Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.worldartx.com">Worldartx.com</option>
<option value="http://weather.cnn.com">Weather.cnn.com</option>
<option value="http://local.msn.com">Local.msn.com</option>
<option value="http://in.weather.yahoo.com">In.weather.yahoo.com</option>
<option value="http://www.weatherforecastmap.com">Weatherforecastmap.com</option>
<option value="http://www.imdpune.gov.in">Imdpune.gov.in</option>
<option value="http://www.weather-forecast.com">Weather-forecast.com</option>
<option value="http://www.timeanddate.com">Timeanddate.com</option>
<option value="http://www.imd.gov.in">Imd.gov.in</option>
<option value="http://weather.weatherbug.com">Weather.weatherbug.com</option>
<option value="http://www.weather.com">Weather.com</option>
<option value="http://weatherspark.com">Weatherspark.com</option>
<option value="http://www.wunderground.com">Wunderground.com</option>
<option value="http://forecast.io">Forecast.io</option>
<option value="http://www.weather.gov">Weather.gov</option>
<option value="http://www.intellicast.com">Intellicast.com</option>
<option value="http://www.in.weather.com">In.weather.com</option>


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
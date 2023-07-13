<html>
<head>

<title>Daily Paper Websites</title>

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
<h5 align = "center";> DailyPapers Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.worldartx.com">Worldartx.com</option>
<option value="http://www.sanjevani.com">Sanjevani.com</option>
<option value="http://www.w3newspapers.com">W3newspapers.com</option>
<option value="http://www.onlinenewspapers.com">Onlinenewspapers.com</option>
<option value="http://www.indianexpress.com">Indianexpress.com</option>
<option value="http://www.timesofindia.indiatimes.com">Timesofindia.indiatimes.com</option>
<option value="http://www.thehindu.com">Thehindu.com</option>
<option value="http://www.samachar.com">Samachar.com</option>
<option value="http://www.asbarez.com">Asbarez.com</option>
<option value="http://www.jpost.com">Jpost.com</option>
<option value="http://www.thesun.co.uk">Thesun.co.uk</option>
<option value="http://www.dailynews.com">Dailynews.com</option>
<option value="http://www.kuenselonline.com">Kuenselonline.com</option>
<option value="http://www.adn.com">Adn.com</option>
<option value="http://www.vvdailypress.com">Wdailypress.com</option>
<option value="http://www.nation.co.ke">Nation.co.ke</option>
<option value="http://www.express.co.uk">Express.co.uk</option>


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
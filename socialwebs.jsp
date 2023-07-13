<html>
<head>

<title> Social Websites</title>

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
<h5 align = "center";> Social Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="https://www.tuenti.com">Tuenti.com</option>
<option value="http://www.netlog.com/">Netlog.com/</option>
<option value="http://www.zorpia.com/">Zorpia.com/</option>
<option value="http://www.skyrock.com/">Skyrock.com/</option>
<option value="http://www.blackplanet.com/">Blackplanet.com/</option>
<option value="http://www.gaiaonline.com">Gaiaonline.com</option>
<option value="http://www.mylife.com">Mylife.com</option>
<option value="http://www.habbo.com">Habbo.com</option>
<option value="http://www.hi5.com">Hi5.com</option>
<option value="http://www.bebo.com">Bebo.com</option>
<option value="http://www.friendster.com">Friendster.com</option>
<option value="http://www.meetme.com">Meetme.com</option>
<option value="http://www.tagged.com">Tagged.com</option>
<option value="http://www.meetup.com">Meetup.com</option>
<option value="http://www.flickr.com">Flickr.com</option>
<option value="http://www.tumblr.com">Tumblr.com</option>
<option value="http://www.pinterest.com">Pinterest.com</option>


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
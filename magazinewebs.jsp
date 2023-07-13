<html>
<head>

<title>Magazine Websites</title>

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
<h5 align = "center";> Magazine Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.worldartx.com">Worldartx.com</option>
<option value="http://www.foundmyself.com/gallery/">foundmyself.com</option>
<option value="http://gotartwork.com/ViewProfiles.aspx?type=Gallery "> gotartwork.com</option>
<option value="http://asingularcreation.com/Gallery/">asingularcreation.com</option>
<option value="http://www.artwanted.com/">artwanted.com</option>
<option value="http://www.artslant.com/">artslant.com</option>
<option value="www.artistsites.org/">artistsites.org</option>
<option value="http://www.artist-listing.com/default.aspx">artist-listing.com</option>
<option value="http://artpickle.com/">artpickle.com</option>
<option value="http://artid.com/">artid.com</option>
<option value="http://artsphere.com.au/">artsphere.com</option>
<option value="http://www.555arts.org/?gclid=CN2ltPiGxb4CFRcRjgodGLUANA">555arts.org</option>
<option value="http://fineartworld.com/galleryDirectoryCtl.php">fineartworld.com</option>
<option value="http://fineartamerica.com/gallerydirectory.html">fineartamerica.com</option>
<option value="http://faso.com/artist-websites/">faso.com</option>
<option value="http://www.artinaction.org/webpage/link">artinaction.org</option>
<option value="http://www.art.com/">art.com</option>


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
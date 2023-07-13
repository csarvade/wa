<html>
<head>

<title> PHP</title>

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
<h5 align = "center";> Php Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.skillslearner.com/">skillslearner.com</option>
<option value="http://www.php.net/manual/en/tutorial.php">php.net</option>
<option value="http://www.w3schools.com/PHP/">w3schools.com</option>
<option value="http://www.tutorialspoint.com/php/">tutorialspoint.com</option>
<option value="http://html.net/">html.net</option>
<option value="http://www.tizag.com/phpT/">tizag.com</option>
<option value="http://www.codecademy.com/tracks/php">codecademy.com</option>
<option value="https://phpacademy.org/">phpacademy.org</option>
<option value="http://www.adobe.com/devnet/dreamweaver/articles/first_dynamic_site_pt1.html">adobe.com</option>
<option value="http://phptutorial.codepoint.net/">phptutorial.codepoint.net</option>
<option value="http://www.thesitewizard.com/php/">thesitewizard.com</option>
<option value="http://www.freewebmasterhelp.com/tutorials/php">freewebmasterhelp.com</option>
<option value="http://www.killersites.com/PHP/">killersites.com</option>
<option value="http://www.dreamincode.net/forums/topic/242835-creating-a-simple-dynamic-website-with-php/">dreamincode.net</option>
<option value="http://www.killerphp.com/">killerphp.com</option>
<option value="http://www.php5-tutorial.com/">php5-tutorial.com</option>
<option value="http://www.homeandlearn.co.uk/php/php.html">homeandlearn.co.uk</option>


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
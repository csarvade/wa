<html>
<head>

<title> .Net </title>

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
<h5 align = "center";> .Net Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.w3schools.com/ASPNET/">w3schools.com</option>
<option value="http://asp.net-tutorials.com/">asp.net-tutorials.com</option>
<option value="http://www.dotnetperls.com/asp">dotnetperls.com</option>
<option value="http://www.asp.net/">asp.net </option>
<option value="http://www.csharp-station.com/">csharp-station.com</option>
<option value="http://azure.microsoft.com/">azure.microsoft.com</option>
<option value="http://www.tutorialspoint.com/asp.net/asp.net_quick_guide.htm">tutorialspoint.com</option>
<option value="http://csharpindepth.com/">csharpindepth.com</option>
<option value="http://www.cramerz.com/aspdotnet">cramerz.com</option>
<option value="http://www.dotnettutorials.com/">dotnettutorials.com</option>
<option value="http://html.net/">html.net</option>
<option value="http://aspalliance.com/">aspalliance.com</option>
<option value="http://www.dotnet-tricks.com/">dotnet-tricks.com</option>
<option value="http://vb.net-informations.com/">vb.net-informations.com</option>
<option value="http://www.wcftutorial.net/">wcftutorial.net</option>
<option value="http://www.aspnetbook.com/">aspnetbook.com</option>
<option value="http://www.wpftutorial.net/">wpftutorial.net</option>


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
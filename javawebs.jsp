<html>
<head>

<title> Java </title>

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
<h5 align = "center";> Java Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.roseindia.net">roseindia.net</option>
<option value="http://www.java-tips.org">java-tips.org</option>
<option value="http://www.java2s.com">java2s.com</option>
<option value="http://www.jdocs.com">jdocs.com</option>
<option value="http://www.java-source.net">java-source.net</option>
<option value=" http://www.javablogs.com">javablogs.com</option>
<option value="http://download-llnw.oracle.com/docs/cd/E17409_01/javase/tutorial/">download-llnw.oracle.com</option>
<option value="http://www.jguru.com">jguru.com</option>
<option value="http://www.coderanch.com">coderanch.com</option>
<option value="http://www.theserverside.com">theserverside.com</option>
<option value="http://www.devx.com/Java/Door/6972">devx.com</option>
<option value="http://www.java.net">java.net</option>
<option value="http://www.developer.com/java/">developer.com</option>
<option value="http://java.sun.com">java.sun.com</option>
<option value="http://www.onjava.com">onjava.com</option>
<option value="http://www.mkyong.com/">mkyong.com</option>
<option value="http://java2all.com/">java2all.com</option>


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
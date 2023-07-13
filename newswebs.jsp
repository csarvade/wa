<html>
<head>

<title>News</title>

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
<h5 align = "center";> News Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.reuters.com/">reuters.com</option>
<option value="http://www.msnbc.com/">msnbc.com</option>
<option value="http://www.latimes.com/">latimes.com</option>
<option value="http://www.bbc.co.uk/news/">bbc.co.uk/news/</option>
<option value="http://www.usatoday.com/">usatoday.com</option>
<option value="http://abcnews.go.com/">abcnews.go.com</option>
<option value="http://www.theguardian.com/uk">theguardian.com/uk</option>
<option value="http://online.wsj.com/india">online.wsj.com/india</option>
<option value="http://www.washingtonpost.com/">washingtonpost.com</option>
<option value="http://www.dailymail.co.uk/home/index.html">dailymail.co.uk</option>
<option value="http://www.nbcnews.com/">nbcnews.com</option>
<option value="http://www.foxnews.com/">foxnews.com</option>
<option value="http://www.nytimes.com/">nytimes.com</option>
<option value="http://news.google.com/">news.google.com</option>
<option value="http://www.cnn.com/">cnn.com</option>
<option value="http://www.huffingtonpost.com/">huffingtonpost.com</option>
<option value="http://news.yahoo.com/">news.yahoo.com</option>


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
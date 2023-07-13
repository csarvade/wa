<html>
<head>

<title> BookStore Websites</title>

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
<h5 align = "center";> Bookstore Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://www.worldartx.com">Worldartx.com</option>
<option value="http://www.flavorwire.com">Flavorwire.com</option>
<option value="http://www.bookstore.ubc.ca">Bookstore.ubc.ca</option>
<option value="http://www.barnesandnoble.com">Barnesandnoble.com</option>
<option value="http://www.strandbooks.com">Strandbooks.com</option>
<option value="http://www.bookstore.regent-college.edu">Bookstore.regent-college.edu</option>
<option value="http://www.delhibookstore.com">Delhibookstore.com</option>
<option value="http://www.bookstore.washington.edu">Bookstore.washington.edu</option>
<option value="http://www.bookfinder.com">Bookfinder.com</option>
<option value="http://www.books.nettop20.com">Books.nettop20.com</option>
<option value="http://www.abebooks.com">Abebooks.com</option>
<option value="http://www.oxfordbookstore.com">Oxfordbookstore.com</option>
<option value="http://www.harvard.com">Harvard.com</option>
<option value="http://www.booksamillion.com">Booksamillion.com</option>
<option value="http://www.junglee.com">Junglee.com</option>
<option value="http://www.amazon.in">Amazon.in</option>
<option value="http://www.pavanchoudary.in">Pavanchoudary.in</option>


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
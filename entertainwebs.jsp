<html>
<head>

<title>Entertainment</title>

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
<h5 align = "center";> Entertainment Websites
<select style="font-size:11px;color:#000000;font-family:verdana;background-color:#f0f0df;" name="choice" size="1" onChange="jump(this.form)" width ="30px">
<option value="http://in.askmen.com/">in.askmen.com</option>
<option value="http://www.stubhub.com/">stubhub.com</option>
<option value="http://www.fandango.com/">http://www.fandango.com/</option>
<option value="http://www.youtube.com/">youtube.com</option>
<option value="http://www.funnyordie.com/">funnyordie.com</option>
<option value="http://9gag.com/">9gag.com</option>
<option value="http://www.nationalgeographic.com/">nationalgeographic.com</option>
<option value="http://www.lyricsnmusic.com/?t=youtube">lyricsnmusic.com</option>
<option value="http://www.rollingstone.com/music">rollingstone.com</option>
<option value="http://www.pogo.com/">pogo.com</option>
<option value="https://www.netflix.com/global">netflix.com</option>
<option value="http://www.rottentomatoes.com/">rottentomatoes.com</option>
<option value="http://www.imdb.com/">imdb.com</option>
<option value="http://perezhilton.com/">perezhilton.com</option>
<option value="http://www.tmz.com/">tmz.com</option>
<option value="http://www.eonline.com/">eonline.com</option>
<option value="http://entertainment.allmyfaves.com/">entertainment.allmyfaves.com</option>


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
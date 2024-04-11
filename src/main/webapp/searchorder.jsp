<html>  
<head>  
<link rel="stylesheet"
	href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
	href="css/font-awesome.min.css" media="screen" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<style type="text/css">
@media (min-width: 600px) {
        body {
          font-size:  0.5rem;
        }
      }
	  @media only screen and (max-width: 600px) {
   body {
   font-size:  0.5rem;
  }
	  html {
  font-size: 14px;
}
@media (min-width: 768px) {
  html {
    font-size: 16px;
  }
}
</style>

<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="tracker.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  
</head>  
<body>  
 <div class="container">  
<form name="vinform">  
<p>&nbsp;</p>
<div class="form-group row" colspan="2"><input class="form-control" type="text" name="t1" placeholder="Search Order" ><br/>
<input type="button" class="btn btn-warrning" value="Show" onClick="sendInfo()"> </div> 
</form>  
  
<span id="amit"> </span>  
 </div>
</body>  
</html>  
// JavaScript Document
 function removeSpaces(string) {
	var tstring = "";
	string = '' + string;
	splitstring = string.split(" ");
	for(i = 0; i < splitstring.length; i++)
	tstring += splitstring[i];
	return tstring;
 }
 
 function check(){
       
     
	  
	    if(queryForm.imgnum.value==""){
         alert("Please Enter Image Number");
         queryForm.imgnum.focus();
	     return false;
      }
	   if(queryForm.fname.value==""){
         alert("Please Enter Name");
         queryForm.fname.focus();
	     return false;
      }
	      if(queryForm.mobno.value==""){
         alert("Please Enter Mobile Number");
         queryForm.mobno.focus();
	     return false;
      }
	  
	   if(queryForm.email.value==""){
         alert("Please Enter Email Id");
         queryForm.email.focus();
	     return false;
      }
	  	
	   if(queryForm.address.value==""){
         alert("Please Enter Accurate Address");
         queryForm.address.focus();
	     return false;
      }
	  

}
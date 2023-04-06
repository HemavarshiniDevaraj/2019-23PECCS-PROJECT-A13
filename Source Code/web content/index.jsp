<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index page</title>
<style type="text/css">

body{
background-image:url("images/surgeon.jpg");

width: 200px;
background-repeat: no-repeat;
height: 400px;
max-width: 400px;
background-size: 120%;

}
.btn-5:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}
.btn-5 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
color: orange;
font-size: 20px;
font-weight: bold;
font-family: monospace;
position: absolute; right: 400px; top: 1px;
color: #e500a4;
text-decoration: blink;

} 

h1.h1{
display:inline-block; 
 width: 500px;
    height: 90px;
    text-align: left;
  position:absolute;top: 300px;right: 500px;
  
   }





.btn-7:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}
.btn-7 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
position: absolute; right: 120px; top: 1px;

color: #e500a4;
font-size: 20px;
font-weight: bold;
font-family: sans-serif;
text-decoration: blink;
} 
.btn-6:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}
.btn-6 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
position: absolute; right: 250px; top: 1px;

color: #e500a4;
font-size: 20px;
font-weight: bold;
font-family: sans-serif;
text-decoration: blink;
} 

.btn-8:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}
.btn-8 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
position: absolute; right: 550px; top: 1px;

color: #e500a4;
font-size: 20px;
font-weight: bold;
font-family: sans-serif;
text-decoration: blink;
} 










</style>







</head>



<body>

<h1 class="h1">Medical Management System</h1>
<div class="g">
<a href="userlogin.jsp" class="btn btn-5">User</a> 
<a href="doctorlogin.jsp" class="btn btn-6">Doctor</a> 

<a href="adminlogin.jsp" class="btn btn-7">Admin</a> 
<a href="managementlogin.jsp" class="btn btn-8">Hospital Management</a> 


</div>
















</body>
</html>
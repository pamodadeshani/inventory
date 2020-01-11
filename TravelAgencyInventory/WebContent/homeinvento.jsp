<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title >Inventory Home</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style>
	body{
    background-color: #D8D8D8;
	}
.header {
	background-image:url(theam.jpg);
    text-align: right;
    padding: 20px;
}
/* The navbar container */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Navbar links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Links - change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}
#logout{
	 text-align: right;
	}
	
/* Container needed to position the button. Adjust the width as needed */
.container {
  position: relative;
  width: 50%;
}

/* Make the image responsive */
.container img {
  width: 25%;
  height: auto;
}

/* Style the button and place it in the middle of the container/image */
.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #555;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  
}

.container .btn:hover {
  background-color: black;
}

.footer{
		padding:0.1em;
		color:white;
		background-color:black;
		text-align:center;
		margin:auto;
		}
</style>
</head>
<body>

<div class="header">
  <h1>INVENTORY MANAGEMANT</h1>
  	<img id="logout"src="logout.png" width="30px" height="30px">
   	<a id="logout" href="Login.jsp">LOGOUT</a>
</div>

<div class="topnav">
  <a href="#">Home</a>
  <a href="#">AboutUs</a>
  <a href="#">Countries</a>
  <a href="#">Contact Us</a>
  <a href="#">Gallery</a>
</div>

    <div class="col-sm-4">
      <h3>Supplier Details</h3>
      <tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
      
   <div class="container">
  <img src="s.ico" alt="Snow">
  <a class="btn" href='Supplier.jsp'>Supplier Details</a>
</div>
    </div>

<div class="container1">
  <div class="row">
    <div class="col-sm-4">
      <h3>Inventory Manage</h3>
      <tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
      
     <div class="container">
  <img src="im.png" alt="Snow">
  <a class="btn" href='ManageInventory.jsp'>Inventory Manage</a>
</div>
    </div>

    <div class="col-sm-4">
      <h3>Items Order</h3> 
      <tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
      
 <div class="container">
  <img src="o.png" alt="Snow">
  <a class="btn" href='Order.jsp'>Order</a>
</div>
    </div>
    
    
    <div class="container1">
  <div class="row">
    <div class="col-sm-4">
      <h3>Report</h3>
      <tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
      
     <div class="container">
  <img src="ireport.jpg" alt="Snow">
  <a class="btn" href='report.jsp'>Monthly Reports</a>
</div>
    </div>
  </div>
</div>
<form>
	<table>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>

	</table>
</form>
<div class="footer">
    Copyright © THEAM TRAVELS.com-2018    -All rights reserved
</div>
</body>
</html>
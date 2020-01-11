<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>order</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style >
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
body{
    background-color: #D8D8D8;
}

input[type=submit],input[type=reset]{
    background-color: #2565ba;
    border:none;
    border-radius:10px ;
    color:white;
    padding:12px 32px;
    text-decoration: none;
    margin:4px 2px;
    cursor: pointer;
}
button[type=submit]{
    background-color: #2565ba;
    border:none;
    border-radius:10px ;
    color:white;
    padding:12px 32px;
    text-decoration: none;
    margin:4px 2px;
    cursor: pointer;
}
.footer{
		padding:0.1em;
		color:white;
		background-color:black;
		text-align:center;
		margin:auto;
		}
				
.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
</head>
<body>

<div class="header">
  <h1>INVENTORY MANAGEMANT</h1>
  
  	<img id="logout"src="logout.png" width="30px" height="30px" background-repeat="no-repeat" >
   	<a id="logout" href="Login.jsp">LOGOUT</a>
</div>

<div class="topnav">
  <a href="Supplier.jsp">Supplier Details</a>
  <a href="ManageInventory.jsp">Inventory Management</a>
  <a href="Order.jsp">Order Details</a>
    <a href="reporthome.jsp">Monthly Report</a>
  
  <div class="search-container">
    <form action="searchOrder.jsp">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>

	   <div id="form">
        <form name="Adding" id="Add" method="post" action="orderAdd.jsp">
            <h1 align="center">Items Order </h1>
            <table align="center">
               
                <tr>
                    <td>Item code:</td>
                    <td><input type="text" id="item" name="item" placeholder="I000" size="50" > </td>
                </tr>
                    <tr>
                    <td>Supplier ID:</td>
                    <td><input type="text" id="id" name="id" placeholder="S000" size="50" > </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email"  size="50" name="email" id="email" >
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input  id="quantity"  name="quantity" size="50" >
                  
                </tr>
                <tr>
                    <td>Order Date</td>
                    <td><input type="date" placeholder="YYYY-MM-DD" id="Date"  name="Date" size="50" >
                  
                </tr>

                <tr>
                    <td></td>
       
                    <td><input type="submit" value="Order" onclick="return validation()" id="submit"></td> 
                  
    				<td><button type="submit" value="Delete"
						formaction="cancelOrder.jsp">Delete</button></td>
					   <td><input type="reset" value="Reset"></td>
   
                </tr>
            </table>
        </form>
        <button type="submit" value="Demo" onclick="demo();">Demo</button> 
    </div>
	 <table style="width:95%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 180px">
			
		

		<tr>
            <th> <pre> Item Code </pre></th>
            <th> <pre> Supplier ID </pre></th>
            <th> <pre> Email  </pre> </th>
			<th> <pre>  quantity  </pre> </th>
			<th> <pre> Order Date </pre> </th>
		
			
		</tr>
            <%
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from order1";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
                        <td><%=rs.getString("itemCode")%></td>
                           <td><%=rs.getString("supid")%></td>
                       	<td><%= rs.getString("email")%></td>
						<td><%= rs.getString("quantity")%></td>
                        <td><%= rs.getString("orderDate")%></td>
                    
                    
                </tr>        
		 <% 
                     }
                    
                }
                    catch(ClassNotFoundException ex){ 
                        out.println("Error : "+ ex);
                    }catch(SQLException ex){
                        out.println("Error : "+ ex);
                    }
                %>
            <br/>
	<br/>
        <br/></table>
        	<script>
	function validation(){
		//var add = document.forms["Adding"]["submit"].value;
		var item = document.forms["Adding"]["item"].value;
		var id = document.forms["Adding"]["id"].value;
		var email = document.forms["Adding"]["email"].value;
		var quantity = document.forms["Adding"]["quantity"].value;
		var Date = document.forms["Adding"]["Date"].value;
		
		/*if(add == "Add"){
			alert("successfully");
			window.open("Supplierinsert.jsp");
		}*/
		if(item == ""){
			alert("please enter item code");
			return false;
		}
		else if(!item.includes("I")){
			alert("Item code must start with I");
			return false;
			
		}
		else if(item.length != 4){
			alert("Item code must have 4 characters");
			return false;
			
		}
		else if(id == ""){
			alert("please enter  supplier ID");
			return false;
		}
		else if(!id.includes("S")){
			alert("Item code must start with S");
			return false;
			
		}
		else if(email == ""){
				alert("please enter email");
				return false;
			}
		else if(email =="" || !email.includes("@")){
			alert("Email must be filled out with @ character");
			return false;
		}
		else if(quantity == ""){
			alert("please enter quantity");
			return false;
		}
		else if(isNaN(quantity)){
			alert("Quantity must be a number");
			return false;
		}
		else if(Date == ""){
			alert("please enter order Date");
			return false;
		}
		else{
			alert("Email Send Successfully");
			return true;
		}
		
	}
	
	
	function demo(){
		document.getElementById("item").value="I006";
		document.getElementById("id").value="S001";
		document.getElementById("email").value="pawani96@gmail.com";
		document.getElementById("quantity").value="9";


	}
	</script> 
        <div class="footer">
    Copyright © THEAM TRAVELS.com-2018    -All rights reserved
</div>
</body>
</html>
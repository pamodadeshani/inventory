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
<title>Supplier Details</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style>
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
body{
    background-color:#D8D8D8;
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
  	<img id="logout"src="logout.png" width="30px" height="30px">
   	<a id="logout" href="Login.jsp">LOGOUT</a>
</div>

<div class="topnav">
  <a href="Supplier.jsp">Supplier Details</a>
  <a href="ManageInventory.jsp">Inventory Management</a>
  <a href="Order.jsp">Order Details</a>
  <a href="reporthome.jsp">Monthly Report</a>
  
  <div class="search-container">
    <form action="Search.jsp">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>

	   <div id="form">
        <form name="Adding" id="Add" method="post" action="SupplierInsert.jsp" >
            <h1 align="center">Supplier Details </h1>
            <table align="center">
                <tr>
                    <td>Supplier ID</td>
                    <td><input type="text" name="id" id="id" placeholder="S000" size="50" > </td>
                </tr>
                 <tr>
                    <td>Supplier Name</td>
                    <td><input type="text" name = "name" size="50" id="name"  >
        
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email"  size="50" name="email" id="email" >
                </tr>
                <tr>
                    <td>Phone No:</td>
                    <td><input type="text" name="phnNo" placeholder="0760000000" size="50" id="phnNo" > </td>
                </tr>
                <tr>
                    <td>Company Name:</td>
                    <td><input type="text" name="company" size="50" id="company">  </td>
                </tr>
              
                <tr>
                   
                    <td><input type="reset" value="Reset"></td>
                    <td><input type="submit" value="Add" name = "submit"   id="submit" onclick=" return validation()"></td> 
         			<td><button type="submit" value="Delete"
						formaction="SupplierDelete.jsp">Delete</button></td>

					<td><button type="submit" value="Update"
						formaction="SupplierDelete.jsp">Update</button></td>
          
                </tr>
            </table>
        </form>
        	<button type="submit" value="Demo" onclick="demo();">Demo</button> 
        
    </div>
    <br>
       
   
     
    <table style="width:95%" border="1"cellspacing="1"cellpading="2"bordercolor="0033FF" align="center" valign="top" style = "margin-left : 180px">
			
		

		<tr>
            <th> <pre> Supplier ID </pre></th>
            <th> <pre> Supplier Name  </pre> </th>
            <th> <pre> Email  </pre> </th>
			<th> <pre>  Phone No      </pre> </th>
			<th> <pre> Company Name </pre> </th>
		
			
		</tr>
            <%
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from supplier";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
                <tr>
                        <td><%=rs.getString("supId")%></td>
                         <td><%= rs.getString("supName")%></td>
                       	<td><%= rs.getString("supEmail")%></td>
						<td><%= rs.getString("supPhone")%></td>
                        <td><%= rs.getString("companyName")%></td>
                    
                    
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
        <br/></table></form>
	<script>
	function validation(){
		//var add = document.forms["Adding"]["submit"].value;
		var id = document.forms["Adding"]["id"].value;
		var name = document.forms["Adding"]["name"].value;
		var email = document.forms["Adding"]["email"].value;
		var phnNo = document.forms["Adding"]["phnNo"].value;
		var company = document.forms["Adding"]["company"].value;
		
		
		
		if(id == ""){
			alert("please enter Supplier id");
			return false;
		}
		else if(!id.includes("S")){
			alert("Item code must start with S");
			return false;
			
		}
		else if(id.length != 4){
			alert("Item code must have 4 characters");
			return false;
			
		}
		else if(name == ""){
			alert("please enter Supplier Name");
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
		else if(phnNo == ""){
			alert("please enter phone number");
			return false;
		}
	
		else if(isNaN(phnNo)){
			alert("phone no must be a number");
			return false;
		}
		else if(phnNo.length!=10){
			alert("phone no must have 10 digits ");
			return false;
		}
		else if(company == ""){
			alert("please enter company Name");
			return false;
		}
		else{
			alert("Successful");
			return true;
		}
		
	}		
	
function demo(){
	document.getElementById("id").value="S006";
	document.getElementById("name").value="pawani Nanayakkara";
	document.getElementById("email").value="pawani96@gmail.com";
	document.getElementById("phnNo").value="07754980699";
	document.getElementById("company").value="Nanayakkara pruducts ";

}
	</script>
	<div class="footer">
    Copyright © THEAM TRAVELS.com-2018    -All rights reserved
</div>
</body>
</html>
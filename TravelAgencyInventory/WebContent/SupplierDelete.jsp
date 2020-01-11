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
<title>Insert title here</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style>
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
    background-color: #D8D8D8;
}
</style>
</head>
<body>
<form name = "abc" ><table>
	<tr>
				<td >Enter Supplier ID:</td>
				<td><input  type="text" placeholder="S000" size="5" name="id"  required /></td>

	</tr>

	<td><button type="submit" value="Delete" name="Delete" onclick="alert('Deleted')">DELETE   SUPPlIER</button></td>				
	</table></form>
	
    <% String supId= request.getParameter("id");
	String delete =request.getParameter("Delete");
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("DELETE FROM supplier  WHERE supId='"+supId+"'");
       
   
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
  
		<hr></hr>
		<br />
		 <form name="Adding" id="Add" method="post" action="SupplierUpdate.jsp" onsubmit="return Validation()">
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
                    <td><input type="text" name="phnNo" id="phnNo" placeholder="0760000000" size="50" > </td>
                </tr>
                <tr>
                    <td>Company Name:</td>
                    <td><input type="text" name="company" name="company" id="company" size="50" >  </td>
                </tr>
              
                <tr>
                    <td></td>
                    <td><button type="submit" value="Update" name = "update"   id="update">UPDATE</button></td> 
              
                </tr>
            </table>
        </form>
    
</body>
</html>
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
				<td >Enter Item Code:</td>
				<td><input  type="text" placeholder="AB000" size="5" name="item"  required /></td>

	</tr>

	<td><button type="submit" value="Delete" name="Delete" onclick="alert('Deleted')">DELETE ITEM</button></td>				
	</table></form>
	
    <% String itemCode= request.getParameter("item");
	String delete =request.getParameter("Delete");
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("DELETE FROM item  WHERE itemCode='"+itemCode+"'");
      
   
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
    
    	<hr></hr>
		<br />
		  <form  id="Add" name="Add" method="post" action="itemUpdate.jsp">
            <h1 align="center">Inventory Details </h1>
            <table align="center">
             <tr>
                    <td>Item code:</td>
                    <td><input type="text" id="item" name="item" placeholder="AB000"  size="50" > </td>
                </tr>
                <tr>
                    <td>Item Name:</td>
                    <td><input type="text" id="name" name="name"  size="50"> </td>
                </tr>
               
       
                <tr>
                    <td>Quantity</td>
                    <td><input  id="quantity" name ="quantity"   size="50">
                  
                </tr>
            
                <tr>
                    <td>Unit Price</td>
                    <td><input  id="price" name="price"  size="50">
                </tr>
				         <tr>
                    <td>Supplier:</td>
                     <td><input   name="sup" id="sup" placeholder="XYZ00"  size="50">
                  
                </tr>
                <tr>
                    <td><button type="submit" value="Update" onclick="validation()" id="submit"> UPDATE</button></td> 
               
                </tr>
                
            </table>
        </form>
</body>
</html>
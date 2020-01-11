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

</head>
<body>
<h1>Search Data</h1>


            <% String id =request.getParameter("search");
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from order1 where itemcode ='"+id+"'";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
            	<table >
               			 <tr>
               			   <td> Item Code</td>
               			   <td><%=rs.getString("itemCode")%></td>
               			 </tr>

						<tr>
                         <td> Supplier Id </td>
                       	<td><%= rs.getString("supid")%></td>
                       	</tr>
                         
                         <tr>
                         <td> Email  </td>
                       	<td><%= rs.getString("email")%></td>
                       	</tr>
                       	
                       	<tr>
                      	<td> Quantity     </td>
						<td><%= rs.getString("quantity")%></td>
						</tr>
						
						<tr>
						<td>Order Date </td>
                        <td><%= rs.getString("orderDate")%></td>
                        </tr>
                        
         </table>
		 <% 
                     }
                    
                }
                    catch(ClassNotFoundException ex){ 
                        out.println("Error : "+ ex);
                    }
                %>
   
</body>
</html>
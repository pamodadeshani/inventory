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
<title>data</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

</head>
<body>
<h1>Book Details</h1>


            <% String name =request.getParameter("search");
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/lms", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from book_table where book_title ='"+name+"'";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
            	<table >
               			 <tr>
               			   <td> Book Title</td>
               			   <td><%=rs.getString("book_title")%></td>
               			 </tr>

						<tr>
                         <td> Author  Name </td>
                       	<td><%= rs.getString("author_name")%></td>
                       	</tr>
                         
                         <tr>
                         <td> ISBN </td>
                       	<td><%= rs.getString("isbn")%></td>
                       	</tr>
                       	
                       	<tr>
                      	<td>  Price   </td>
						<td><%= rs.getString("price")%></td>
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
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<body>
<h1>Search Data</h1>


            <% String id =request.getParameter("search");
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
                Statement stm = (Statement) con.createStatement();
                String SQL = "select * from supplier where supId ='"+id+"'";
                ResultSet rs = stm.executeQuery(SQL);
                while(rs.next()){ 
            %>
            	<table >
               			 <tr>
               			   <td> Supplier ID </td>
               			   <td><%=rs.getString("supId")%></td>
               			 </tr>

						<tr>
                         <td> Supplier Name </td>
                       	<td><%= rs.getString("supName")%></td>
                       	</tr>
                         
                         <tr>
                         <td> Email  </td>
                       	<td><%= rs.getString("supEmail")%></td>
                       	</tr>
                       	
                       	<tr>
                      	<td> Phone No      </td>
						<td><%= rs.getString("supPhone")%></td>
						</tr>
						
						<tr>
						<td>Company Name </td>
                        <td><%= rs.getString("companyName")%></td>
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
     <!-- SLLIT ITPM 2yr2sem IT17058438  -->
    

    <% String supId= request.getParameter("id");
    String supName= request.getParameter("name");
    String supEmail= request.getParameter("email");
    String supPhone= request.getParameter("phnNo");
    String companyName= request.getParameter("company");
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("insert into supplier(supId,supName,supEmail,supPhone,companyName)values('"+supId+"','"+supName+"','"+supEmail+"','"+supPhone+"','"+companyName+"')");
       out.println("Data is successfully inserted!");
   		response.sendRedirect("Supplier.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       
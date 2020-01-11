
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="java.sql.*,java.util.*" %>
     <!-- SLLIT ITPM 2yr2sem IT17058438  -->
    

    <% String itemCode = request.getParameter("item");
    String supid = request.getParameter("id");
    String email= request.getParameter("email");
    String quantity= request.getParameter("quantity");
    String orderDate= request.getParameter("Date");
   
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
        Statement stm =  conn.createStatement();
       
       int i=stm.executeUpdate("insert into order1(itemCode,supid,email,quantity,orderDate)values('"+itemCode+"','"+supid+"','"+email+"','"+quantity+"','"+orderDate+"')");
       out.println("Data is successfully inserted!");
  		response.sendRedirect("Order.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       
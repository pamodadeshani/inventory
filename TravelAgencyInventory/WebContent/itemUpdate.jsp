
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
    
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

    <%

    String itemCode= request.getParameter("item");
    String itemName= request.getParameter("name");
    String qty = request.getParameter("quantity");
	String unitPrice= request.getParameter("price");
    String supplier= request.getParameter("sup");

    try{
    	//System.out.println("ABC3");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
        Statement stm =  conn.createStatement();
        //System.out.println("ABC4");
       int i=stm.executeUpdate("update item set itemName='"+itemName+"',qty='"+qty+"',unitPrice='"+unitPrice+"',supplier='"+supplier+"'where itemCode='"+itemCode+"'");
       out.println("Data is successfully inserted!");
   		response.sendRedirect("ManageInventory.jsp");
    }
    catch(Exception e){
    	System.out.print(e);
    	e.printStackTrace();
    }
    %>
       
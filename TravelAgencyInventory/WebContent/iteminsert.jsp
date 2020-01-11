
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->


<%
	String itemCode = request.getParameter("item");
	String itemName = request.getParameter("name");
	String qty = request.getParameter("quantity");
	String unitPrice = request.getParameter("price");
	String supplier = request.getParameter("sup");

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travel", "root", "root");
		Statement stm = conn.createStatement();

		int i = stm.executeUpdate("insert into item(itemCode,itemName,qty,unitPrice,supplier)values('"
				+ itemCode + "','" + itemName + "','" + qty + "','" + unitPrice + "','" + supplier + "')");

	      out.println("Data is successfully inserted!");
	   		response.sendRedirect("ManageInventory.jsp");
	   		
	   		String SQL = "select * from item";
            ResultSet rs = stm.executeQuery(SQL);
            while(rs.next()){
            	
            	String qty1 = rs.getString("qty"); 
        		String unitprice1 =rs.getString("unitPrice"); 
        		
        		double qty2 = Double.parseDouble(qty1); 
        		double unitprice = Double.parseDouble(unitprice1); 
        		
        		Double total; 
        		Double estimate; 
        		total = 0.0; 
        		estimate = 0.0; 
        		total = qty2 * unitprice; 
        		estimate = total + total;


            }
	    }
	    catch(Exception e){
	    	System.out.print(e);
	    	e.printStackTrace();
	    }
	    %>
	     

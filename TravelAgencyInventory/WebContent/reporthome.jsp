<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("ir.jpg");

    /* Full height */
    height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
body{
    background-color: #D8D8D8;
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
</style>
</head>
<body>

<div class="bg"></div>
<div>
<form><table align="center">
<tr>
   <td><button type="submit" value="Items"
						formaction="Report.pdf">Inventory Report</button>
	</td>	
					
</tr></table></form></div>
</body>
</html>
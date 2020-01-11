<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
 <!-- SLLIT ITPM 2yr2sem IT17058438  -->

<style type="text/css">
.header{
    width: 100%;
    height: 200px;
}
body{
    background-color: black;
    color: #DAA520;
    text-align: center;
}
.login {
    padding: 16px;
    font-size: x-large;
}
input[type="submit"]{
    padding: 10px 20px;
    margin: 5px 0px;
    color: blue;
    background-color: #191919;
    border: 0;
    border-radius: 10px;
    cursor: pointer;
}
button[type=submit]{
    background-color: #DAA520;
    border:none;
    border-radius:10px ;
    color:black;
    padding:12px 32px;
    text-decoration: none;
    margin:4px 2px;
    cursor: pointer;
}
</style>
</head>
<body >
<div class="header">
    <img src="Login (2).png" width=100% height=200px>

</div>
<form method="post"action="LoginCheck">
<div class="login">
<table align="center">
			<tr>
				<td width="300">User Name:</td>
				<td><input name="username" width="100" height="50" required></td>
			</tr>

			<tr>
				<td width="300">Password:</td>
				<td><input type="password" name="pwd" required></td>
			</tr>

			<tr>
				<td></td>
				<td> <button type = "submit" value = "submit"  >LOGIN </button></td>
			</tr>
			
		</table>
</div>
	</form>
</body>
</html>
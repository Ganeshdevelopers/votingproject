<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Signin</title>
	<style type="text/css">
		* {
		padding: 0px;
		margin: 0px;
	}
	
	body {
		width: 100%;
		height: 100vh;
		overflow: hidden;
		background-image: linear-gradient(#ef8a06, #f6f6f6, #00ff33);
	}
	
	#header {
		width: 100%;
		height: 7vh;
		background-color: black;
		display: flex;
		align-items: center;
		flex: wrap;
	}
	
	span {
		color: white;
		margin-left: 10px;
		font-size: 17px;
	}
	
	#home {
		background-color: green;
		height: 52px;
		display: flex;
		align-items: center;
		margin-left: 0px;
	}
	
	#sigin {
		width: 100%;
		height: 200px;
		border: 2px solid green;
		border-bottom: 1px solid green;
		padding-top: 20px;
	}
	a{
		color: white;
	}
</style>
</head>
<body>
	<div id="header">
		<span id="home"><a href="Home.jsp">Home</a></span> 
		<span><a href="VoterRegistration.jsp">NewVoterRegistration</a></span> 
		<span><a href="VoterSignin.jsp">Voter Signin</a></span> 
		<span>Admin Signin</span> 
		<span>About</span>
	</div>
	<br>
	<div id="sigin">
		<center>
			<h1>Admin Signin</h1>
			<br>
			<form action="AdminLogin">
				Email Id:<input type="email" placeholder="Enter Your Email Id" name="email" required="required">
				<br><br> 
				Password :<input type="password" placeholder="Enter Your Password" name="password" required="required"> 
				<br><br> 
				<input type="submit" value="Signin">
			</form>
			<br><br><br>
			<%
			String msg = (String) request.getAttribute("loginStatus");
			if (msg != null) {
			%>
			<h2 style="color: red;"><%= msg%></h2>
			<%
			}
			%>
</body>
</html>
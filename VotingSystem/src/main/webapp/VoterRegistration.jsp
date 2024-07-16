<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Voter Registration</title>
	<style>
		*{
			padding: 0px;
			margin: 0px;
		}
		body{
			width: 100%;
			height: 100vh;
			overflow: hidden;
			background-image: linear-gradient(#ef8a06, #f6f6f6,#00ff33);
		}
		#header{
			width: 100%;
			height: 7vh;
			background-color: black;
			display: flex;
			align-items: center;
			flex: wrap;
		}
		span{
			color: white;
			margin-left: 10px;
			font-size: 17px;
		}
		#home{
			background-color: green;
			height:52px;
			display:flex;
			align-items: center;
			margin-left: 0px;
		}
		#container{
			width:100%;
			border: 3px solid green;
			height: 550px;
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
		<span>NewVoterRegistration</span>
		<span><a href="VoterSignin.jsp">Voter Signin</a></span>
		<span><a href="AdminSignin.jsp">Admin Signin</a></span>
		<span>About</span>
	</div>
	<br>
	<div id="container">
			<center>
				<h1>New Voter Registration</h1>
				<br>
				<form action="signUp">
					FirstName:<input type="text" placeholder="Enter First Name" name="Firstname" required="required" pattern="[A-Z]{1}[a-z]{2,}">
					<br><br>
					LastName:<input type="text" placeholder="Enter Last Name" name="Lastname" required="required" pattern="[A-Z]{1}[a-z]{2,}">
					<br><br>
					Date_Of_Birth:<input type="date" placeholder="Enter Date Of Birth" name="Dob" required="required">
					<br><br>
					Gender:<input type="radio" name="Gender" value="male" required="required">Male
					<input type="radio" name="Gender" value="female" required="required"> Female
					<br><br>
					AadharNo:<input type="text" placeholder="0000 0000 0000" name="Aadhar" required="required" pattern="[0-9]{4} [0-9]{4} [0-9]{4}">
					<br><br>
					PanNo:<input type="text" placeholder="ABCDE1234F" name="Pan" required="required" pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}">
					<br><br>
					Email:<input type="email" placeholder="Enter Email" name="Email" required="required">
					<br><br>
					MobileNo:<input type="text" placeholder="000 000 0000" name="Mobile" required="required" pattern="[0-9]{3} [0-9]{3} [0-9]{4}">
					<br><br>
					Address:<input type="text" placeholder="Enter Address " name="Address" required="required">
					<br><br>
					UserName:<input type="text" placeholder="Enter User Name" name="Username" required="required">
					<br><br>
					Password:<input type="password" placeholder="Enter Password" name="Password" required="required">
					<br><br>
					<input type="submit" value="Signup">
				</form>
				<br><br>
				<hr>
				<%
					String msg  = (String)request.getAttribute("message");
					if(msg!=null)
					{
				%>
						<h2 style="color: gren;"><%= msg%></h2>
				<%
					}
				%>
			</center>
	</div>
</body>
</html>
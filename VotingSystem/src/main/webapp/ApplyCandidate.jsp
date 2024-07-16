<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		*{
			padding: 0px;
			margin: 0px;
		}
		body{
			width: 100%;
			height: 100vh;
			overflow: hidden;
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
		#Dashboard{
			width:100%;
			height:550px;
			border: 2px solid green;
		}
		#userDetails{
			width: 500px;
			height: 400px;
			background-color: transparent;
			position: absolute;
			top: 180px;
			left: 200px;
		}
		img{
			width: 180px;
			height: 150px;
		}
		table,tr,td {
			border: 1px solid black;
		}
		#vote{
			width: 500px;
			height: 400px;
			background-color: transparent;
			position: absolute;
			top: 180px;
			right: 200px;
		}
		#name{
			color: red;
		}
		#s{
			color: black;
		}
</style>
</head>
<body>
	<div id="header">
		<span id="home"><a href="Home.jsp">Home</a></span>
		<span><a href="">Apply For Candidate</a></span>
		<span><a href="VoterSignin.jsp">Logout</a></span>
	</div>
	<br>
	
	<div id="Dashboard">
		<center>
			<h2>Candidate Dashboard</h2>
			<br>
			<form action="addCandidate">
				First Name : <input type="text" placeholder="Enter Your First Name " name="firstname" required="required" pattern="[A-Z]{1}[a-z]{2,}">
				&nbsp;&nbsp;&nbsp;
				Last Name : <input type="text" placeholder="Enter Your Last Name " name="lastname" required="required" >
				<br><br>
				DOB : <input type="date" placeholder="Enter Your Date of Birth " name="dob" required="required">
				<br><br>
				Gender : <input type="radio" name="gender" value="male" required="required">Male
				&nbsp;&nbsp; <input type="radio" name="gender" value="female" required="required"> Female
				<br><br>
				Age : <input type="text" placeholder="Enter Your Age " name="age" required="required">
				<br><br>
				Aadhar : <input type="text" placeholder="Enter Aadhar Number " name="aadhar" required="required" pattern="[0-9]{4} [0-9]{4} [0-9]{4}">
				<br><br>
				Pan : <input type="text" placeholder="Enter Pan Number " name="pan" required="required" pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}">
				<br><br>
				Email : <input type="email" placeholder="Enter Your Email " name="email" required="required">
				<br><br>
				Mobile : <input type="text" placeholder="Enter Your Mobile No " name="mobile" required="required" pattern="[0-9]{3} [0-9]{3} [0-9]{4}">
				<br><br>
				Address : <input type="text" placeholder="Enter Address " name="address" required="required">
				<br><br>
				Monthly Income : <input type="text" placeholder="Enter Monthly Income " name="monthlyincome" required="required">
				<br><br>
				Yearly Income : <input type="text" placeholder="Enter Yearly Income " name="yearlyincome" required="required">
				<br><br>
				Total Propery  : <input type="text" placeholder="Enter Total Property " name="totalproperty" required="required">
				<br><br>
				Criminal Background : <input type="radio" name="criminalbackground" value="Yes" required="required">Yes
				&nbsp;&nbsp; <input type="radio" name="criminalbackground" value="No" required="required">No
				<br><br>
				<input type="submit" value="Apply">&nbsp;&nbsp;
				<input type="reset" value="Cancel">
			</form>
			<%
				String status = (String)request.getAttribute("status");
				if(status!=null)
				{
					boolean check = (Boolean)request.getAttribute("check");
					if(check)
					{
			%>
						<h2 style="color: green;"><%= status%></h2>
			<%
					}
					else
					{
			%>
						<h2 style="color: red"><%= status%></h2>
			<%
					}
				}
			%>
		</center>
</body>
</html>
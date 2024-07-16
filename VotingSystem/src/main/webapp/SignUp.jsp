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
			display: flex;
			justify-content: center;
			align-items: center;
		}
		#container{
			width: 400px;
			height: 550px;
			background-color: yellow;
			display: flex;
			justify-content: space-between;
			align-items: center;
			flex-direction: column;
			border: 5px solid black;
		}
		input {
			width: 250px;
			height: 30px;
			outline: none;
			border: 2px solid black;
			text-align: center;
			font-size: 16px;
		}
		.sub{
			width: 100px;
			margin: 10px;
			border-radius: 20px;
			background-color:gray;
		}
		#submitbutton{
			display: flex;
		}
		h2{
			color: blue;
			text-decoration: underline 2px solid blue;
		}
	</style>
</head>
<body>
	<div id="header">
		<span id="home">Home</span>
		<span>NewVoterRegistration</span>
		<span>Voter Signin</span>
		<span>Admin Signin</span>
		<span>About</span>
	</div>
	<div id="container">
		<h2>Sign Up</h2>
		<input type="text" placeholder="Enter Your Name" name="name">
		<input type="text" placeholder="Enter Your DOB" name="dob">
		<input type="text" placeholder="Enter Your Address" name="add">
		<input type="text" placeholder="Enter Your Mobilenumber" name="mobile">
		<input type="email" placeholder="Enter your Email" name="mail">
		<input type="text" placeholder="Enter Your Username" name="uname">
		<input type="password" placeholder="Enter Your Password" name="pass">
		<div id="submitbutton">
		<input class="sub" type="submit" value="Register">
		<input class="sub" type="text" value="Cancel"> 
		</div>
	</div>
</body>
</html>
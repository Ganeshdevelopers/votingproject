<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homes</title>
	<style>
		*{
			padding: 0px;
			margin: 0px;
		}
		body{
			width: 100%;
			height: 100vh;
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
		h1{
			border: 2px solid green;
			height: 65px;
			padding-top: 20px;
		}
		a{
			color: white;
		}
	</style>
</head>
<body>
	<div id="header">
		<span id="home">Home</span>
		<a href="VoterRegistration.jsp"><span>NewVoterRegistration</span></a>
		<a href="VoterSignin.jsp"><span>VoterSignin</span></a>
		<a href="AdminSignin.jsp"><span>AdminSignin</span></a>
		<span>About</span>
	</div>
	<br>
	<center>
		<h1>Voting Application</h1>
		<br><br>
	</center>
</body>
</html>
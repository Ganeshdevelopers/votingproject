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
			width: 200px;
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
		.name{
			color: red;
		}
		#s{
			color: black;
		}
	</style>
</head>
<body>
	<div id="header">
		<span id="home">Home</span>
		<span>Welcome Pratik</span>
		<span>Logout</span>
	</div>
	<br>
	
	<div id="Dashboard">
		<center>
			<h2>User Dashboard</h2>
		</center>
		<div id="userDetails">
		<center>
			<h2>User Details:</h2>
			<br><br>
			<img src="user.png">
			<table>
			<tr>
				<td>Id:</td>
				<td>69</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td>Pratik</td>
			</tr>
			<tr>
				<td>Email Id:</td>
				<td>pratik@gmail.com</td>
			</tr>
			<tr>
				<td>phone No:</td>
				<td>1234</td>
			</tr>
			<tr>
				<td>Status:</td>
				<td>Voted</td>
			</tr>
		</table>
		</center>		
		</div>
		<div id="vote">
		<center>
			<span class="name">Successfully Voted...</span>
			<br><br>
			<span class="name">Pratik</span>
			<br><br>
			<span id="s">Do Voting</span>
			<br><br>
			<form action="">
				<input type="radio" name="a">
				<label>Candidate 1</label>
				<br><br>
				<input type="radio" name="a">
				<label>Candidate 2</label>
				<br><br>
				<input type="radio" name="a">
				<label>Candidate 3</label>
				<br><br>
				<input type="radio" name="a">
				<label>Candidate 4</label>
				<br><br>
				<input type="submit" value="Vote">
			<br>
			</form>
		</center>
		</div>
	</div>
</body>
</html>
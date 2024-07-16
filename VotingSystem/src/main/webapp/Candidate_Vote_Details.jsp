<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type=>
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
		#details{
			width: 100%;
			height: 200px;
			background-color: transparent;
			border: 2px solid black;
			padding-top: 20px;
		}
		table,tr,th,td{
			border: 2px solid black;
		}
		#th1{
			background:lime;
		}
		img{
			width: 40px;
			height: 40px;
		}
	</style>
</head>
<body>
	<div id="header">
		<span id="home">Home</span>
		<span>Welcome Admin</span>
		<span>View Admins</span>
		<span>View Voters</span>
		<span>View Candidates</span>
		<span>Logout</span>
	</div>
	<br>
	<div id="details">
	<center>
		<h2>Candidate's Vote Details</h2>
		<br>
		<table>
			<tr id="th1">
				<th></th>
				<th>Candidate 1 Votes</th>
				<th>Candidate 2 Votes</th>
				<th>Candidate 3 Votes</th>
				<th>Candidate 4 Votes</th>
				<th>Actions</th>
			</tr>
			<tr>
				<td>Voters</td>
				<td></td>
				<td>pratika@gamil.com</td>
				<td></td>
				<td></td>
				<td><img alt="" src="delete.jpg"></td>
			</tr>
			<tr>
				<td>Total Votes</td>
				<td>0</td>
				<td>1</td>
				<td>0</td>
				<td>0</td>
				<td></td>
			</tr>
		</table>
		</center>
	</div>
</body>
</html>
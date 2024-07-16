<%@page import="com.govt.VotingSystem.entity.Voter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALL VOTERS</title>
	<style >
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
		#DashBoard{
			width: 100%;
			height: 300px;
			border: 2px solid green;
			padding-top: 20px;
		}
		.s1{	
			color: black;
		}
		.s2{
			color: green;
		}
		table,tr,th,td{
			border: 2px solid black;
			border-collapse: collapse;
		}
</style>
</head>
<body>
	<div id="header">
		<span id="home"><a href="Home.jsp">Home</a></span>
		<span><a href="viewAllAdmins">View Admins</a></span>
		<span><a href="viewAllVoters">View Voters</span>
		<span><a href="viewAllCandidates">View Candidates</span>
		<span><a href="AdminSignin.jsp">Logout</a></span>
	</div>
	<br>
	<div id="DashBoard">
	<center>
		<h3>ALL VOTERS DETAILS</h3>
		<br>
		<%
			List<Voter> voList = (List)request.getAttribute("allVoters");
		%>
		<table>
			<tr>
				<th>FIRSTNAME</th>
				<th>LASTNAME</th>
				<th>DOB</th>
				<th>GENDER</th>
				<th>AADHAR</th>
				<th>PAN</th>
				<th>EMAIL</th>
				<th>MOBILE</th>
				<th>ADDRESS</th>
				<th>USERNAME</th>
				<th>PASSWORD</th>
				<th>ID</th>
				<th>STATUS</th>
			</tr>
			<%
				for(Voter voter : voList)
				{
			%>
			<tr>
				<td><%= voter.getFirstname()%></td>
				<td><%= voter.getLastname()%></td>
				<td><%= voter.getDob()%></td>
				<td><%= voter.getGender()%></td>
				<td><%= voter.getAddress()%></td>
				<td><%= voter.getPan()%></td>
				<td><%= voter.getEmail()%></td>
				<td><%= voter.getMobile()%></td>
				<td><%= voter.getAddress()%></td>
				<td><%= voter.getUsername()%></td>
				<td><%= voter.getPassword()%></td>
				<td><%= voter.getId()%></td>
				<td><%= voter.getStatus()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
	</div>
</body>
</html>
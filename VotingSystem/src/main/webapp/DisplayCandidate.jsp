<%@page import="com.govt.VotingSystem.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALL CANDIDATES</title>
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
		<h3>ALL CANDIDATES DETAILS</h3>
		<br>
		<%
			List<Candidate> cList = (List)request.getAttribute("allCand");
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
				<th>MONTHLY INCOME</th>
				<th>YEARLY INCOME</th>
				<th>TOTAL PROPERTIES</th>
				<th>CRIMINAL BACKGROUND</th>
				<th>VOTES</th>
			</tr>
			<%
				for(Candidate cand : cList)
				{
			%>
			<tr>
				<td><%= cand.getFirstname()%></td>
				<td><%= cand.getLastname()%></td>
				<td><%= cand.getDob()%></td>
				<td><%= cand.getGender()%></td>
				<td><%= cand.getAadhar()%></td>
				<td><%= cand.getPan()%></td>
				<td><%= cand.getEmail()%></td>
				<td><%= cand.getMobile()%></td>
				<td><%= cand.getAddress()%></td>
				<td><%= cand.getMonthlyincome()%></td>
				<td><%= cand.getYearlyincome()%></td>
				<td><%= cand.getTotalproperty()%></td>
				<td><%= cand.getCriminalbackground()%></td>
				<td><%= cand.getVotes()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
	</div>
</body>
</html>
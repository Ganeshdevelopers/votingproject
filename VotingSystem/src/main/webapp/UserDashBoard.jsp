<%@page import="com.govt.VotingSystem.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@page import="com.govt.VotingSystem.entity.Voter"%>
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

	<% 
		Voter v = (Voter)request.getAttribute("voter");
	%>
	<div id="header">
		<span id="home"><a href="Home.jsp">Home</a></span>
		<span>Welcome <%= v.getFirstname()%></span>
		<span><a href="ApplyCandidate.jsp">Apply For Candidate</a></span>
		<span><a href="VoterSignin.jsp">Logout</a></span>
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
				<td><%= v.getId()%></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><%= v.getFirstname()%></td>
			</tr>
			<tr>
				<td>Email Id:</td>
				<td><%= v.getEmail()%></td>
			</tr>
			<tr>
				<td>phone No:</td>
				<td><%= v.getMobile()%></td>
			</tr>
			<tr>
				<td>Status:</td>
				<td><%= v.getStatus()%></td>
			</tr>
		</table>
		</center>		
		</div>
		<div id="vote">
		<center>
			<span id="name"><%= v.getFirstname()%></span>
			<br><br>
			<span id="s">Do Voting</span>
			<br><br>
			<%
				List<Candidate> candList = (List)request.getAttribute("listOfCan");
				for(Candidate can : candList)
				{
			%>
			<form action="addVote">
				<input type="radio" name="candidate" value="<%= can.getEmail()%>">
				<label><%= can.getFirstname()%></label>
				<br><br>
				<%
				}
				if(v.getStatus().equalsIgnoreCase("Not voted"))
				{
			%>
				<input type="hidden" name="voter" value="<%= v.getEmail()%>">
				<input type="submit" value="Vote">
			</form>
			<%
				}
				String candName = (String)request.getAttribute("name");
				if(candName!=null)
				{
			%>
				<h2 style="color: green"><%= v.getFirstname()%> have voted for <%= candName%></h2>
			<%
				}
			%>
		</center>
		</div>
	</div>
</body>
</html>
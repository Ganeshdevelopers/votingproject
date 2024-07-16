<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		*{
			padding: 0px;
			margin: 0px;
		}
		body{	
			width: 100%;
			height: 100vh;
			display: flex;
			align-items: center;
			justify-content: center;
		}
		#header{
			width: 500px;
			height: 40px;
			background-color: pink;
			border: solid 2px black;
			border-bottom: solid 1px black;
			position: absolute;
			top: 83px;
		}
		#body{
			width: 500px;
			height: 500px;
			background-color: yellow;
			border: solid 2px black;
			display: flex;
			justify-content: center;
			align-items: center;
			position: absolute;
		}
		h1{
			text-align: center;
		}
		input{
			width: 200px;
			height: 30px;
			border:3px solid black;
			border-radius: 30px;
			text-align: center;
			font-size: 16px
		}
		.sub{
			width: 80px;
			margin: 10px;
		}
		a{
			position: absolute;
			top: 10px;
			right:10px;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<div id="header">
		<h1>Project Title</h1>
	</div>
	<div id="body">
		<form action="">
			<input type="text" placeholder="UserName" name="username">
			<br><br>
			<input type="password" placeholder="Password" name="userpassword">
			<br><br>
			<input class="sub" type="submit" value="Login">
			<input class="sub" type="submit" value="Signup">
		</form>
		<a href="">about</a>
	</div>
</body>
</html>
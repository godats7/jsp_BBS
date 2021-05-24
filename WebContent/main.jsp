<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.io.PrintWriter" %>
 <% request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP BBS Website</title>
</head>
<body>

		<%
		String userID =null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		
		%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
			data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP BBS Website</a>
		</div>	
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
			<ul class=" nav navbar-nav">
				<li class="active"><a href="main.jsp">Main</a></li>
				<li><a href="bbs.jsp">Board</a></li>
			</ul>
			<%
				if(userID == null){
								
			%>
			<!-- 비로그인 화면 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					 data-toggle="dropdown" role="button" aria-haspopup="true" 
					 aria-expanded="false">Connect<span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="login.jsp">Login</a></li>
					 	<li><a href="join.jsp">Join</a></li>
					 </ul>
				</li>
			</ul>
			
			<%
				} else {
			%>
			<!-- 로그인 화면 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					 data-toggle="dropdown" role="button" aria-haspopup="true" 
					 aria-expanded="false">Member Setting<span class="caret"></span></a>
					 <ul class="dropdown-menu">
					 	<li><a href="logoutAction.jsp">Logout</a></li>					 	
					 </ul>
				</li>
			</ul>
			
			<%
				}
			%>
		
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>introducing WOOK BBS</h1>
				<p>this JSP BBS website is made by BootStrap design template, using a basic and simple Dev logics</p>
				<a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a>
			</div>
		</div>	
	</div>

	<div class="container" style="padding-bottom: 50px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-silde-to="0" class="active">
				<li data-target="#myCarousel" data-silde-to="1">
				<li data-target="#myCarousel" data-silde-to="2">
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img  src="images/1.jpg">
				</div>
				<div class="item">
					<img  src="images/2.jpg">
				</div>	
				<div class="item">
					<img  src="images/3.jpg">
				</div>				
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
	
	<!-- <script src="http://code.jquery.com/jquery-1.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script> -->
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
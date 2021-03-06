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
				<li><a href="main.jsp">Main</a></li>
				<li class="active"><a href="bbs.jsp">Board</a></li>
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
		<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan=2 style="background-color: #eeeee; text-align: center;">게시판 글쓰기 양식</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="title" name="bbsTitle" maxlength="50"></td>						
					</tr>					
					<tr>
						<td><textarea class="form-control" placeholder="content" name="bbsContent" maxlength="2048" style="height: 350px; resize: none;" ></textarea></td>
					</tr>					
				</tbody>				
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="write">	
		</form>
					
		</div>
	</div>

	<!-- <script src="http://code.jquery.com/jquery-1.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script> -->
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
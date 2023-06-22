<%@page import="DTO.Note"%>
<%@page import="DTO.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Show notes</title>

<style>
body {
     background: linear-gradient(to bottom, #00838f, #00bcb1, #00a8eb, #0088f7, #9e54c6);
    height: 100%;
    margin: 0;
    background-repeat: no-repeat;
    background-attachment: fixed;
}
</style>

</head>
<%@ include file="all_component/allCSS.jsp"%>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	<%
	Admin admin = (Admin) session.getAttribute("user");
	if (admin != null) {
	%>

	<div class="continer-fluid  ">

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5"></div>
				<div class="card-header text-center bg-custom">
					<h4>Show Notes</h4>
				</div>
				<%
				for (Note note : admin.getListOfNotes()) {
				%>
				<div class="card">
					<h5 class="card-header"><%=note.getTitle() %></h5>
					<div class="card-body">
						
						<p class="card-text"><%=note.getDescription() %></p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
				<%
				}
				%>

			</div>
		</div>
	</div>

	<%
	} else {
	%>

	<div class="text-center"><h1>Please login first
			
			</h1></div>

	<%
	}
	%>


</body>
</html>
<%@page import="DTO.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
     background: linear-gradient(to bottom, #00838f, #00bcb1, #00a8eb, #0088f7, #9e54c6);
    height: 100%;
    margin: 0;
    background-repeat: no-repeat;
    background-attachment: fixed;
}
</style>
<meta charset="UTF-8">
<title>Add notes</title>
</head>
<%@ include file="all_component/allCSS.jsp"%>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	<%
	Admin admin = (Admin) session.getAttribute("user");
	if (admin != null) {
	%>

	<div class="container-fluid ">


		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5"></div>
				<div class="card-header text-center bg-custom">
					<h4>Add Note</h4>
				</div>
				<div class="card-body bg-light">
					<form action="note2" method="post">

						<div class="form-group">
							<label for="exampleInputEmail1">Note Title</label> <input
								type="text" class="form-control" name="noteTitle"
								aria-describedby="emailHelp" placeholder="Add note title here">

						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Note Description</label>
							<textarea class="form-control" name="noteDesc" rows="3"></textarea>
						</div>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Add
							note</button>
					</form>
				</div>
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
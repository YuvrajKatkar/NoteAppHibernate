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
<title>Login Page</title>
</head>
<%@ include file="all_component/allCSS.jsp"%>
<body>
	<%@ include file="all_component/navbar.jsp"%>

	<div class="container-fluid ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5"></div>
				<div class="card-header text-center bg-custom">
					<h4>Login</h4>
				</div>
				<%
				String message = (String) session.getAttribute("Invalid");
				if (message != null) {
				%>
				<div class="alert alert-danger mb-0 rounded-0" role="alert">
					<%=message%>
				</div>

				<%
				session.setAttribute("Invalid", null);
				}
				%>
				<div class="card-body bg-light">
					<form action="loginValidation" method="post">

						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" class="form-control" name="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Enter email">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" autocomplete="off"
								name="exampleInputPassword1" placeholder="Password">
						</div>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
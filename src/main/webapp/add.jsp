<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add notes</title>
</head>
<%@ include file="all_component/allCSS.jsp"%>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="continer-fluid div-color">
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
								type="text" class="form-control" id="noteTitle"
								aria-describedby="emailHelp" placeholder="Add note title here">

						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Note Description</label>
							<textarea class="form-control" id="noteDesc"
								rows="3"></textarea>
						</div>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Add
							note</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
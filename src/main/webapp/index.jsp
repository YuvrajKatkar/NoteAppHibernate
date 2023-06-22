<%@page import="DAO.ProvideEntityManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>NoteApp</title>
<style type="text/css">
*{
margin: 0; padding: 0;

}
.body{

}
</style>
</head>
<%@ include file="all_component/allCSS.jsp" %>
<body>
	<%
	if(ProvideEntityManager.entityManager==null){
	 	ProvideEntityManager.entityManager=ProvideEntityManager.provideEntityManager();
	}
	%>
	<%@ include file="all_component/navbar.jsp" %>
	<div class="container-fluid">
	<div class="text-center">
	<h1 class="text-dark" >NoteApp - A web application to save your notes</h1>
	<a type="button" href="Login.jsp" class="btn btn-info mr-3">Login</a>
	<a type="button" href="Register.jsp" class="btn btn-info">Register</a>
	
	</div>
	
	</div>
	
	
	

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html >
<html>
<style>
.topnav {
	position: fixed;
	width: 100%;
	background-color: green;
	text-align: left;
	color: white;
	width: 100%;
}

.header {
	text-align: center;
}

.logo {
	float: left;
	
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: #00ffbf;
	color: white;
	text-align: left;
}
</style>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>



<body>

	<div class="topnav">
		<div class="logo">
			<a href="#" style="color: white;">Logo</a>
		</div>
		<div class="header">
			<h1>Student Management App</h1>
		</div>
	</div>

	<br></br>
	<br></br>
	<br></br>


	<div class="row">
		<button type="button" style="margin-bottom: 15px;"
			class="btn btn-primary col-md-offset-2">User</button>
		<button type="button" style="margin-bottom: 15px;" data-toggle="modal"
			data-target="#myModal" class="btn btn-primary col-md-offset-7">ADD</button>
	</div>


	<div class="container">
		<div class="jumbotron">
			<h2 align="center">Student List</h2>
			<c:if test="${!empty studentList}">
				<table style="align: center" class="table table-bordered">
					<thead>
						<tr>
							<th rowspan="2">ID</th>
							<th rowspan="2">Name</th>
							<th rowspan="2">Address</th>
							<th rowspan="2">Roll</th>
							<th colspan="2" style="text-align: center">Action</th>
						</tr>
						<tr>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>

					<c:forEach items="${studentList}" var="student">
						<tr>
							<td><c:out value="${student.id}" /></td>
							<td><c:out value="${student.name}" /></td>
							<td><c:out value="${student.address}" /></td>
							<td><c:out value="${student.roll}" /></td>
							<td><a href="edit?id=${student.id}"> <i
									class="fa fa-pencil" style="font-size:24px;"></i></a></td>
							<td><a href="delete?id=${student.id}"><i
									class="fa fa-trash" style="font-size:24px;"></i></a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- 	Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Registration</h4>
				</div>
				<div class="modal-body">
					<form method="post" action="save">
						<table>
							<tr>
								<td>Name: <input type="text" name="name"></td>
							</tr>
							<tr>
								<td>Address: <input type="text" name="address"></td>
							<tr>
								<td>Roll: <input type="text" name="roll"></td>
							<tr>
								<td><input type="submit" value="Submit"></td>
							</tr>

						</table>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>


<div class="footer">

	<br>
	<div class="row">
	<div class="col-sm-6" >Designed by Sandip Mahato</div>
	<div class="col-sm-6" style="text-align: right;" >Address: Balkumari	</div>
	<br>

</div>
<br>
</div>


<%-- <script type="text/javascript" src='<c:url value="/theme/js/lib/bootstrap.min.js"/>'></script> --%>



</html>
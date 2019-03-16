<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src='<c:url value="/theme/js/lib/jquery.min.js"/>'></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
<h1 align="center">Register Data</h1>


<form method="POST" action="save" >
					<table align="center">
						<tr>
								<td>Name:<br> <input id="name" type="text" name="name"></td>
							</tr>
							<tr>
								<td>Address:<br> <input id="address" type="text" name="address"></td>
							<tr>
								<td>Roll:<br> <input id="roll" type="text" name="roll"></td>
						<tr>
							<td><input id="addStudent" type="submit" value="Submit" /></td>
						</tr>
					</table>
				</form>
				<a href="listStudent">View List</a>
</body>
<script>
var A_PAGE_CONTEXT_PATH = "${pageContext.request.contextPath}"
	$("#addStudent").click(function() {
	var studentObj = {
		name : $("#name").val(),
		address : $("#address").val(),
		roll : $("#roll").val()
	};
	console.log(studentObj);
	$.ajax({
		method : "POST",
		url : A_PAGE_CONTEXT_PATH + '/save',
		data : JSON.stringify(studentObj),
		dataType : "json",
		contentType : "application/json",
		cache : false,
		success : function(data, textStatus, xhr) {
		 alert("Data Added Successfully");  
		 location.reload();
		}
	 	
		
	});
});


</script>
</html>
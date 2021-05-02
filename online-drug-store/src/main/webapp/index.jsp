<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<style>
			.container{
				display:gird;
				grid-template-rows:10% 80% 10%;
			}
		</style>
	</head>
	<body>
		<form method="post" action="add">
		No1: <input type="text" name="no1"/> <br> <br>
		No2: <input type="text" name="no2"/> <br> <br>
		<input type="submit" value="Add Numbers" name="add"/>
	</form>
	</body>
</html>
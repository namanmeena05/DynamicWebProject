<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
</head>
<body>

<% String msg = (String) request.getAttribute("msg"); %>
	


	<div style="padding: 10%; height: 30%">
		<form action="UserCtl" method="post">
		
			<table border="1" style="width: 60%; margin: 0 auto;">
			
			<div style="background-color: green; text-align: center;">
			
		<% if(msg != null){ %>
		<%=msg%>
		<%} %>

			</div>
		
				<tr>
					<th style="width: 30%; padding: 10px; text-align: left;">First
						Name:</th>
					<td><input type="text" name="firstName"
						placeholder="firstName"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
					<th>Last Name:</th>
					<td><input type="text" name="lastName"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Login ID:</th>
					<td colspan="4" style="text-align: left;"><input type="text"
						name="loginId"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td colspan="4" style="text-align: left;"><input
						type="password" name="password"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Date of Birth:</th>
					<td colspan="4" style="text-align: left;"><input type="date"
						name="dob"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Address:</th>
					<td colspan="4" style="text-align: left;"><input type="text"
						name="address"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: center;"><input
						type="submit" name="operation" value="SignUp"
						style="padding: 5px 10px; background-color: #4CAF50; border-radius: 3px; cursor: pointer;">
						<input type="submit" name="operation" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

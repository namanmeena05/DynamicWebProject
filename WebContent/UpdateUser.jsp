<%@page import="in.co.rays.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% UserBean bean = (UserBean)request.getAttribute("bean"); %>

<form action="UserCtl" method="post">
			<table border="1" style="width: 60%; margin: 0 auto;">
			
			
			<tr>
			<td><input type="hidden" name="id" value="<%= bean.getId()%>"></td>
			</tr>
			
				<tr>
					<th style="width: 30%; padding: 10px; text-align: left;">First
						Name:</th>
					<td><input type="text" name="firstName" value="<%= bean.getFirstName()%>"
						placeholder="firstName"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
					<th>Last Name:</th>
					<td><input type="text" name="lastName" value="<%= bean.getLastName()%>"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Login ID:</th>
					<td colspan="4" style="text-align: left;"><input type="text"
						name="loginId" value="<%= bean.getLoginId()%>"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td colspan="4" style="text-align: left;"><input
						type="password" name="password" value="<%= bean.getPassword()%>"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Date of Birth:</th>
					<td colspan="4" style="text-align: left;"><input type="date"
						name="dob" value="<%= bean.getDob()%>"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<th>Address:</th>
					<td colspan="4" style="text-align: left;"><input type="text"
						name="address" value="<%= bean.getAddress()%>"
						style="width: 95%; padding: 5px; border: 1px solid; border-radius: 3px;"></td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: center;"><input
						type="submit" name="operation" value="Update"
						style="padding: 5px 10px; background-color: #4CAF50; border-radius: 3px; cursor: pointer;">
						<input type="submit" name="operation" value="List">
					</td>
				</tr>
			</table>
</form>


</body>
</html>
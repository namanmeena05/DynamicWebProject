<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String msg = (String) request.getAttribute("msg");
	%>

<form action="LoginCtl" method ="post">
<%@ include file="Header.jsp"%>

<table align="center" style=" padding: 17% ">

<tr>
				<%
					if (msg != null) {
				%>
				<%=msg%>
				<%
					}
				%>
			</tr>
<tr>
<th>loginId</th>
<td colspan="4"><input type="text" name ="loginId">
</tr>
<tr>
<th>password</th>
<td><input type="password" name = "password">
</tr>
<tr>
<th> </th>
<td><input type="Submit" name="operation" value="SignIn">
<input type="Submit" name="operation" value="SignUp">
<input type="Submit" name="operation" value="forgetPassword">

</tr>


</table>

</form>

</body>
</html>
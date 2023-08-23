<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="UserListCtl" method="post">
		<%@include file="Header.jsp"%>
		<%
			List list = (List) request.getAttribute("list");
			int pageNo = (int) request.getAttribute("pageNo");
			int nextListSize = (int) request.getAttribute("nextListSize");
			int index = ((pageNo - 1) * 5) + 1;

			Iterator it = list.iterator();
		%>
		<table align="center">
			<td><input type="text" name="firstName" placeholder="fn"></td>
			<td><input type="text" name="dob">
			<td>
			<td><input type="Submit" name="operation" value="search">
			<td>
		</table>
		<table border="1" align="center">

			<tr>
			
			<th>Select</th>	

				<th>S. No.</th>
				<th>firstName</th>
				<th>lastName</th>
				<th>loginId</th>
				<th>password</th>
				<th>dob</th>
				<th>address</th>
				<th>edit</th>

			</tr>
			<%
				while (it.hasNext()) {
					bean = (UserBean) it.next();
			%>
			<tr>
			<td><input type="checkbox" name="ids" value="<%=bean.getId()%>"></td>
				<td><%=index++%></td>
				<td><%=bean.getFirstName()%></td>
				<td><%=bean.getLastName()%></td>
				<td><%=bean.getLoginId()%></td>
				<td><%=bean.getPassword()%></td>
				<td><%=bean.getDob()%></td>
				<td><%=bean.getAddress()%></td>
				<td><a href="UserCtl?id=<%=bean.getId()%>">edit</a></td>
				<%
					}
				%>
			</tr>
		</table>
		<table align="center">
		<tr>
		<td><input type ="hidden" name="pageNo" value="<%=pageNo %>">
		
			<td><input type="Submit" name="operation" value="Previous" <%=(pageNo !=1) ? "" : "disabled" %>><td>
			<td> <input type="Submit" name="operation" value="Delete"> </td>
			<td><input type="Submit" name="operation" value="Next" <%=(nextListSize !=0) ? "" : "disabled" %>>
			<td>
			</tr>
		</table>
	</form>

</body>
</html>
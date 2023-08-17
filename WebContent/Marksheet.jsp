<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>marksheet</title>
</head>
<body>
	<form action="MarksheetCtl" method="post">

		<table align="center" border="1" style="width: 50%: margin: 0;padding:10%">
			<tr>
				<th>id:</th>
				<td><input type="text" name="id"></td>

			</tr>
			<tr>
				<th>name :</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
			<th> roll No :</th>
			<td><input type="text" name="rollNo"></td>
			</tr>
			<tr>
			<th> physics : </th>
			<td><input type="text" name="physics"></td>
			</tr>
			<tr>
			<th> chemistry : </th>
			<td><input type="text" name="chemistry"></td>
			</tr>
			<tr>
			<th> maths :</th>
			<td><input type="text" name="maths"></td>
			</tr>
			<tr>
			<th> english :</th>
			<td><input type="text" name="english"></td>
			</tr>
			<tr>
			
			<td colspan="4" style="text-align: center "><input type="submit" value="submit" style="padding: 5px 10px; background-color: #4CAF50; color: white; border: none; border-radius: 3px; cursor: pointer;">
					</td>
			</tr>
		</table>
	</form>

</body>
</html>
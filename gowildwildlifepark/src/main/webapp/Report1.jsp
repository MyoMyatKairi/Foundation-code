<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
	<%@ page import = "java.sql.*" %>
	<%@ page import = "com.csm.dao.AnimalManage"%>
	<%@ page import = "com.csm.entity.Animal" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report 1</title>
</head>

<style>

body{
background-image:url(bgcc1.jpg);
background-repeat:no-repeat;
background-size:cover;}

table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 80%;
}

th,td {
  height: 30px;
}

</style>

<body>

<%
	try{
		
		AnimalManage aMgr = new AnimalManage();
		ArrayList<Animal> animal = aMgr.fetchDaveorTemi();
%>
	<center><div>
	<h1>Report 1</h1>
	<table>
		<tr>
			<th>Animals ID</th>
			<th>Animals Name</th>
			<th> Animals Gender</th>
			<th>Year Arrive</th>
			<th>Keepers ID</th>
			<th>Keepers Name</th>
		</tr>
	<%
		for (Animal i : animal){
	%>
		<tr>
			<td> <%= i.getAnimal_id() %></td>
			<td> <%= i.getAnimal_name() %></td>
			<td> <%= i.getAnimal_gender() %> </td>
			<td> <%= i.getYear_arrive() %> </td>
			<td> <%= i.getKeeper_id() %> </td>
			<td> <%= i.getKeeper_name() %> </td>
	</tr>
		<%
			}
		%>
</table>
</div></center>
<%
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animal Lists</title>
</head>

<style>
body{
background-image:url('https://media1.thehungryjpeg.com/thumbs/800_110990_d3ae6fe68da3058c7760b8fe6c707ed667594039.jpg');
background-repeat:no-repeat;
background-size:cover;}

table,td,th{
border:2px solid black;}

table{
border-collapse: collapse;
width: 80%;}

th{
height:40px;}

td {
height: 30px;}

#home{
border: 2px solid;
border-radius: 10px;
padding: 20px;
text-decoration:none;
color: #005580;
background-color:#8a8a5c;
margin-left:1400px;}

#home:hover{
color: #ff8080;}

</style>

<body>

<center><h1>Animal Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		AnimalManage eMgr = new AnimalManage();
		ArrayList<Animal> animals = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Animal ID</th>
		<th>Animal Name</th>
		<th>Animal Gender</th>
		<th>Year arrive</th>
		<th>Keeper Id</th>
		<th>Enclosure ID</th>
		<th>Species ID</th>
		<th>Delete Animal</th>
		
		 
	</tr>
<%
	for (Animal animal :animals){
%>

	<tr>
	<td><%=animal.getAnimal_id() %></td>
	<td><%=animal.getAnimal_name() %></td>
	<td><%=animal.getAnimal_gender() %></td>
	<td><%=animal.getYear_arrive() %></td>
	<td><%=animal.getKeeper_keeper_id() %></td>
	<td><%=animal.getEnclosure_enclosure_id() %></td>
	<td><%=animal.getSpecies_species_id() %></td>
	<td><a href="Animal_delete.jsp?AnimalID=<%= animal.getAnimal_id() %>">Delete</a></td>
 
	</tr>

<%
	}
%>

	</table></center>

<%
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.KeeperManage" %>
    <%@ page import = "com.csm.entity.Keeper" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Keeper Lists</title>
</head>

<style>
body{
background-image:url('https://img.freepik.com/free-vector/lion-wild-animal-with-safari-woman_24877-53837.jpg?w=2000');
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

<center><h1>Keeper Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		KeeperManage eMgr = new KeeperManage();
		ArrayList<Keeper> keepers = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Keeper ID</th>
		<th>Keeper name</th>
		<th>Keeper rank</th>
		<th>Date of Birth</th>
		<th>Delete Keeper</th>
	</tr>
<%
	for (Keeper keeper :keepers){
%>

	<tr>
	<td><%=keeper.getKeeper_id() %></td>
	<td><%=keeper.getKeeper_name() %></td>
	<td><%=keeper.getKeeper_rank() %></td>
	<td><%=keeper.getDate_of_Birth() %></td>
	<td><a href="Keeper_delete.jsp?Keeper ID=<%= keeper.getKeeper_id() %>">Delete</a></td>
 
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
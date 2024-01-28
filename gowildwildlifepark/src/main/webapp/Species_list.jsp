<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.SpeciesManage" %>
    <%@ page import = "com.csm.entity.Species" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Species List</title>
</head>

<style>
body{
background-image:url('https://w0.peakpx.com/wallpaper/718/578/HD-wallpaper-animals-elephant-bear-parrot-lion-moutain-lion-bird-jungle-howard-robinson.jpg');
background-repeat:no-repeat;
background-size:cover;}

table,td,th{
border:2px solid black;}

table{
border-collapse: collapse;
width: 80%;}

th{
height:40px;
color: #00FFFF;
}

td {
height: 30px;
color: #00FFFF;
}

#home{
border: 2px solid;
border-radius: 10px;
padding: 20px;
text-decoration:none;
color: blue;
background-color:#8a8a5c;
margin-left:1400px;}

#home:hover{
color: #ff8080;}

</style>

<body>

<center><h1>Species Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		SpeciesManage eMgr = new SpeciesManage();
		ArrayList<Species> specieses = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Species_id</th>
		<th>Species_name</th>
		<th>Species_group</th>
		<th>Life_style</th>
		<th>Conversation_status</th>
		<th>Delete Species</th> 
	</tr>
<%
	for (Species species :specieses){
%>

	<tr>
	<td><%=species.getSpecies_id() %></td>
	<td><%=species.getSpecies_name() %></td>
	<td><%=species.getSpecies_group() %></td>
	<td><%=species.getLife_style() %></td>
	<td><%=species.getConversation_status() %></td>
	<td><a href="Species_delete.jsp?SpeciesID=<%= species.getSpecies_id() %>">Delete</a></td>
 
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
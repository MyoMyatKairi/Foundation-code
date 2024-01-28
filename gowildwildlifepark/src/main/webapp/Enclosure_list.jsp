<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.EnclosureManage" %>
    <%@ page import = "com.csm.entity.Enclosure" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enclosure Lists</title>
</head>

<style>
body{
background-image:url('https://img.freepik.com/premium-vector/zoo-map-animals-safari-park-plan-fenced-enclosures-with-lion-llama-rhinoceros-people-look-panda-giraffe-visitors-guide-excursion-families-walk-vector-concept_176411-4999.jpg?w=2000');
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

<center><h1>Enclosure Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		EnclosureManage eMgr = new EnclosureManage();
		ArrayList<Enclosure> enclosures = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Enclosure ID</th>
		<th>Enclosure Type</th>
		<th>Enclosure Location</th>
		<th>Delete Enclosure</th>
	</tr>
<%
	for (Enclosure enclosure :enclosures){
%>

	<tr>
	<td><%=enclosure.getEnclosure_id() %></td>
	<td><%=enclosure.getEnclosure_type() %></td>
	<td><%=enclosure.getEnclosure_location() %></td>
	<td><a href="Enclosure_delete.jsp?EnclosureID=<%= enclosure.getEnclosure_id() %>">Delete</a></td>
 
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
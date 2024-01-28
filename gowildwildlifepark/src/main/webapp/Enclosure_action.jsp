<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.EnclosureManage" %>
    <%@ page import = "com.csm.entity.Enclosure" %>
    <%@ page import = "com.csm.DBManager" %>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String et = request.getParameter("type");
	
	String el = request.getParameter("location");
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//two parameter passing 
	Enclosure e = new Enclosure(et, el);
	
	//calling EnclosureManage
	EnclosureManage eMag = new EnclosureManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(e);
	
	if(Affect == 1)
		out.println("Successfully Insert..");

}catch (ClassNotFoundException e){
	e.printStackTrace();
}catch (SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
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
	String aname = request.getParameter("name");
	String agender = request.getParameter("gender");
	String yarrive = request.getParameter("arrive");
	
	int kkid = Integer.parseInt(request.getParameter("id"));
	int eeid = Integer.parseInt(request.getParameter("id"));
	int ssid = Integer.parseInt(request.getParameter("id"));
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//two parameter passing 
	Animal i = new Animal(aname,agender,yarrive,kkid,eeid,ssid );
	
	//calling DietManage
	AnimalManage eMag = new AnimalManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(i);
	
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
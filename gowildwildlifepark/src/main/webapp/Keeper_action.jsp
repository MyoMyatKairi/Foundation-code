<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.KeeperManage" %>
    <%@ page import = "com.csm.entity.Keeper" %>
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
	String kn = request.getParameter("name");
	
	String kr=  request.getParameter("rank");
	
	String kd = request.getParameter("date_of_birth");
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//two parameter passing 
	Keeper k = new Keeper(kn,kr,kd );
	
	//calling KeeperManage
	KeeperManage eMag = new KeeperManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(k);
	
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
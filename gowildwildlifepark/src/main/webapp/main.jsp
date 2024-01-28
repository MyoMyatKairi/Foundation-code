<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild WildLife Park</title>
</head>

<style>

body{
	background-image:url('https://c0.wallpaperflare.com/preview/185/31/671/tanzania-serengeti-national-park-kenya-wildlife.jpg');
	background-repeat: no-repeat;
	background-size:cover;
	box-sizing: border-size;
	margin:0;
	padding:0;
}

.menu_bar{
	background-color: Blue;
	text-align: left;
	height: 60px;
	float:top;
}

.menu_bar ul{
	display: inline-flex;
	list-style:none;
	color: white;
	font-size:25px;
	margin:0;
}

.menu_bar ul li{
	width: 120px;
	margin: 7px;
	padding: 15px;
	text-align: center;
}

.menu_bar ul li a {
	text-decoration:none;
	color:white;
	margin: 0;
}

.menu_bar ul li:hover{
	color: #a64dff;
	border-radius: 5px;
}

.sub-menu-1 {
	display: none;
}

.menu_bar ul li:hover .sub-menu-1{
	display: block;
	position: absolute;
	background: rgb(0,100,0);
	margin-top:15px;
	margin-left:-15px;
}

.menu_bar ul li:hover .sub-menu-1 ul{
	display: block;
	margin:1px;
}
.menu_bar ul li:hover .sub-menu-1 ul li{
	width: 150px;
	padding: 10px;
}

.sub-menu-1 ul li:hover{
background-color:#134d00;}

h1{
	margin: 200px 80px 10px;
	color:#bfff00;
}

h2{
	margin:20px 150px 10px;
	color: #bfff00;
}

p{
	margin:20px 75px 10px;
}


.active{
border: 1px solid #0000FF;
border-radius: 7px;
color: white;
background-color: #0000FF;
padding: 13px;}

.active:hover{
color: #66ff66}

</style>

<body>

<div class="menu_bar" >
<ul>		
	<li><a href="main.jsp" class="active:">Home</a></li>
	
	 
	
	
	<li><a href="main.jsp" class="active:hover">Diet</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Diet.jsp" >Add Diet</a></li>
			<li><a href="Diet_list.jsp">View Diet type</a></li>
			
			</ul>
			</div>
		</li>
		
			
	<li><a href="main.jsp" class="active:hover">Keeper</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Keeper.jsp">Add Keeper information</a>
			<li><a href="Keeper_list.jsp">View Keeper information</a></li>
			 
		</ul>
		</div>
	</li>
	
	<li><a href="main.jsp" class="active:hover">KeeperReport</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Report1.jsp">Keeper report1</a>
			<li><a href="Report2.jsp">Keeper report2</a>
			
		</ul>
		</div>
	</li>
	
	<li><a href="main.jsp" class="active:hover">Enclosure</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Enclosure.jsp">Add Enclosure type</a></li>
			<li><a href="Enclosure_list.jsp">View Enclosure type</a></li>
			
		</ul>
		</div>
	</li>
	 
	 <li><a href="main.jsp" class="active:hover">Animal</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Animal.jsp">Add Animal type</a>
			<li><a href="Animal_list.jsp">View Animal type</a></li>
			
		</ul>
		</div>
	</li>
	
	<li><a href="main.jsp" class="active:hover">Species</a>
	<div class="sub-menu-1" style="background-color: #2db300">
		<ul style="font-size:19px">
			<li><a href="Species.jsp">Add Species type</a></li>
			<li><a href="Species_list.jsp">View Species type</a></li>
			
		</ul>
		</div>
	</li>
	
</ul>
</div>
<center>
<h1>Welcome To Go Wild WildLife Park</h1>
<h2>Discover the animals world !!!!!!</h2>
<b><p>Over 2000 animals with new challenges and excitement.Just enjoy the moment.</p></b>
</center>

</body>
</html>
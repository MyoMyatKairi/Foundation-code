<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Diet</title>
</head>

<style>
body{
background-image:url('https://wallpapers.com/images/featured/panda-febx93hzu7kg6u4s.jpg');
background-repeat:no-repeat;
background-size:cover;
margin: 180px 600px 40px;}
h2{
align:center;
margin: 9px 100px 20px;}
form{
width:300px;
border: 2px solid;
border-radius:30px;
height: 350px;
align:center;
padding:10px;}
input[type=text],select{
width: 80%;
height: 28px;
display:inline-block;
border: 2px solid;
align:center;
margin: 8px 21px 0;
padding-left: 5px;
font-size: 14px;}
input[type=text]:hover{
color:green;}
input[type=number],selete{
width: 80%;
height: 28px;
display:inline-block;
border: 2px solid;
align:center;
margin: 8px 21px 0;
padding-left: 5px;
font-size: 14px;}
input[type=number]:hover{
color:green;}
button{
width:80%;
height: 34px;
border: 2px solid;
border-radius: 30px;
background-color: pink;
margin: 10px 23px 10px;
align:center;
font-size:18px;}
button:hover{
color:blue;}
label[for=dtype]{
margin:10px 18px 0;
color:blue;
font-size:19px;}
label[for=dfeed]{
margin:10px 18px 0;
color:blue;
font-size:19px;}
#home{
border: 2px solid;
border-radius: 10px;
padding: 20px;
text-decoration:none;
color: black;
background-color:#80aaff;
margin-left: 750px;}
#home:hover{
color: #00ff00;}

</style>

<body>

<a href="main.jsp" id="home">Home</a>

<form action = "Diet_action.jsp" target="_top">

<h2>Add Diet</h2>
<label for ="dtype" >Diet Type </label><br>
<input type="text" name="type" required><br><br>

<label for ="dfeed">Number of feed per day </label><br>
<input type="number" name="feed" required><br><br>

<button type = "submit">Save</button>
<button type = "reset">Clear</button>

</form>

</body>
</html>
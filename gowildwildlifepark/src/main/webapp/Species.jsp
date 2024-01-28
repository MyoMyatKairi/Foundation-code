<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Species type</title>
</head>

<style>
body{
background-image:url('https://w0.peakpx.com/wallpaper/718/578/HD-wallpaper-animals-elephant-bear-parrot-lion-moutain-lion-bird-jungle-howard-robinson.jpg');
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
height: 550px;
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
label[for=sname]{
margin:10px 18px 0;
color:#bfff00;
font-size:19px;}
label[for=sgroup]{
margin:10px 18px 0;
color:#bfff00;
font-size:19px;}
label[for=sstyle]{
margin:10px 18px 0;
color:#bfff00;
font-size:19px;}
label[for=sconstatus]{
margin:10px 18px 0;
color:#bfff00;
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

<form action = "Species_action.jsp" target="_top">

<h2>Add Species type</h2>
<label for ="sname" >Species name </label><br>
<input type="text" name="name" required><br><br>

<label for ="sgroup">Species group </label><br>
<input type="text" name="group" required><br><br>

<label for ="sstyle">Life style </label><br>
<input type="text" name="style" required><br><br>

<label for ="sconstatus">Conversation status </label><br>
<input type="text" name="constatus" required><br><br>

<button type = "submit">Save</button>
<button type = "reset">Clear</button>

</form>

</body>
</html>
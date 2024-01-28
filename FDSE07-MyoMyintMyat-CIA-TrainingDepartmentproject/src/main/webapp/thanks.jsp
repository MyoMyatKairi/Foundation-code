<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.CourseRegister"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Training Department | Thanks</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
    "
    />
  </head>
  <body class="text-bg-dark">
<section class="container animate__animated animate__fadeInDown">
  <nav class="navbar navbar-expand-lg navbar-dark py-4">
    <div class="container-fluid p-0">
      <a class="navbar-brand fw-bold fs-5" href="index.jsp"
        >Training <span class="text-success">Department</span></a
      >
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 fs-6 align-items-center gap-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#" onclick = "goBack(2)"
              >Home</a
            >
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="goBack(1)"
              >Registered</a
            >
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
</section>    <div class="container animate__animated animate__fadeIn animate__slow">
      <div class="row align-items-center" style="min-height: 80vh">
        <div class="col">
          <div class="text-center d-flex flex-column gap-5">
            <% CourseRegister userInfo = (CourseRegister) request.getAttribute("Course"); %>
            <h1 class="display-5 fw-bold text-success">
              Thanks for joining us <%-- <br> <span style="text-decoration-style: wavy;"><%= userInfo.getCourseName()%></span> --%>
            </h1>
            <p class="">
              <span class="fs-3"
                >Here is the summary of the course you have chosen</span
              >
              <br />
              <span class="fs-4">
              	You will have to take the course at <%= userInfo.getTime() %>
               </span>
            </p>
            
            <div class="rounded p-3 overflow-hidden">
            	<table class="table table-light table-responsive">
            		<tr>
            			<th>Name</th>
            			<th>Email</th>
            			<th>Selected Course</th>
            			<th>Schedule</th>
            			<th>Cost</th>
            		</tr>
            		
            		<tr>
            			<td><%=  userInfo.getUserName()%></td>
            			<td><%=  userInfo.getEmailId()%></td>
            			<td><%=  userInfo.getCourseName()%></td>
            			<td><%=  userInfo.getTime()%></td>
            			<td><%=  userInfo.getPrice()%></td>
            		</tr>
            		
            	</table>
            </div>
            
            <div>
              <button class="btn btn-outline-light rounded-pill p-3" onclick="goback()"
                >Go Back </button
              >
            </div>
            
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
    <script>
    function goback(){
    	window.history.go(-2);
    }
    </script>
    
  </body>
</html>

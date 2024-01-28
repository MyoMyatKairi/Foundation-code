<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.RegisteredAccount"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
    "
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
    	
    </style>
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
      <% RegisteredAccount ra = (RegisteredAccount)request.getAttribute("AccountInfo"); %>
      
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 fs-6 align-items-center gap-3">
         
         
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/new?name=<%=ra.getName()%>&email=<%= ra.getEmail() %>"
              >Register</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/enrolledCourse?email=<%= ra.getEmail() %>&name=<%= ra.getName()%>"
              >Enrolled Courses</a
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
</section>
  
    
    <section class="contaniner">
      <div
        class="row justify-content-center align-items-center w-100"
        style="min-height: 80vh"
      >
      <div class="col-12 col-lg-6 animate__animated animate__fadeInRight">
      <img src="https://media.gettyimages.com/id/1032385930/vector/flat-work-space.jpg?s=612x612&w=0&k=20&c=hTrX30MXooxF8dLOOxtOWVJSPCzbOsNut5rrkfFbiOc=" class="img-fluid" alt="" />
        </div>
        <div class="col-12 col-md-8 col-lg-4 text-center border py-4">
            <h1>Welcome <br /><%= ra.getName() %></h1>
            <div class="d-flex flex-column gap-2">
              <a href="<%=request.getContextPath()%>/new?name=<%=ra.getName()%>&email=<%= ra.getEmail() %>" class="btn btn-dark">Register New Course</a>
              <a href="<%=request.getContextPath()%>/enrolledCourse?email=<%= ra.getEmail() %>&name=<%= ra.getName() %>" class="btn btn-dark">Show your course</a>
            </div>
        </div>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
    <script src="index.js"></script>
  </body>
</html>

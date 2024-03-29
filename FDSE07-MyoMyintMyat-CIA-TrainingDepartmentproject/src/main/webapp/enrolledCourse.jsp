<%@page import="java.util.List"%>
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
            <a class="nav-link active" aria-current="page" onclick="goBack(1)"
              >Home</a
            >
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/new?name=<%=request.getParameter("name")%>&email=<%= request.getParameter("email")%>"
              >Register</a
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
            <h1 class="display-5 fw-bold text-success">
              Your Enrolled Courses
            </h1>

            <div class="rounded p-3 overflow-hidden">
              <table class="table table-light table-hover">
                <thead>
                  <th>Course</th>
                  <th>Time</th>
                  
                </thead>
				<% List<CourseRegister> courseRegister = (List<CourseRegister>)request.getAttribute("registeredCourses"); 
					for(CourseRegister i:courseRegister){
						
					
				%>
                <tr>
                	<td><%= i.getCourseName() %></td>
                	<td><%= i.getTime()%></td>
                	
                </tr>
                <%
                	}
				%>
              </table>
            </div>

            <div>
              <button class="btn btn-outline-light rounded-pill p-3" OnClick="backBtn1()">
                Go Back To Home Page
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
    <script type="text/javascript">
    	function backBtn1(){
		window.history.go(-1)
	}
    </script>
  </body>
</html>

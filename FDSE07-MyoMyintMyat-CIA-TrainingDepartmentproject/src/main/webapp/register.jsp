<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.trainingprogram.model.Course"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Training Department | Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
    " />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body class="text-bg-dark">
<section class="container animate__animated animate__fadeInDown">
  <nav class="navbar navbar-expand-lg navbar-dark py-4">
    <div class="container-fluid p-0">
      <a class="navbar-brand fw-bold fs-5" href="index.jsp"
        >Training<span class="text-success">Department</span></a
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
            <a class="nav-link active" aria-current="page" onclick="goBack()"
              >Home</a
            >
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/enrolledCourse?email=<%= request.getAttribute("email") %>"
              >Enrolled Course</a>
          </li>
          
          
        </ul>
      </div>
    </div>
  </nav>
</section>
	<!-- registeration section -->
	<section class="container">
		<div
			class="row align-items-center overflow-hidden  justify-content-lg-between justify-content-center ">
			<!-- register form -->
			<div
				class="col-12  animate__animated animate__fadeInUp">
				<div class="border shadow  p-4 px-5 rounded m-auto"
					style="max-width: 500px">
					<h3 class="text-center mb-4 fs-2">Register In Here</h3>
					<form action="insert"
						class="d-flex flex-column align-content-around ">
						<input required type="hidden" class="form-control" id="name"
							name="name" placeholder="Type the user Name"
							value=<%=request.getAttribute("name")%>> 
						<input required
							type="hidden" class="form-control" name="email" id="email"
							placeholder="example@gmail.com" 
							value=<%= request.getAttribute("email") %>>
							
						<div class="mb-3">
							<label for="courses" class="form-label">Selected Course</label> <select
								name="course" id="courses" class="form-select">
								<%
								List<Course> course = (List<Course>) request.getAttribute("listCourse");
								for (Course i : course) {
								%>
								<option value="<%=i.getCourseName()%>">
									<%=i.getCourseName()%>(<%=(int) i.getPrice()%>mmk)
								</option>
								<%
								}
								%>
							</select>
						</div>
						<div class="mb-3">
							<label for="time" class="form-label">Selected Time</label> <select
								name="time" id="time" class="form-select">
								<%
								List<String> timeList = (List<String>) request.getAttribute("time");
								for (String i : timeList) {
								%>
								<option value="<%=i%>">
									<%=i%>
								</option>
								<%
								}
								%>
							</select>
						</div>
						<input required type="submit"
							class="btn btn-outline-light fs-5 px-3 w-75 align-self-center shadow"
							value="Register">
						
					</form>
				</div>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
    <script>
    function goBack(){
    	window.history.go(-1);
    }
    </script>
	<script src="index.js"></script>
</body>
</html>

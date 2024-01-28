<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
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
		.custom-link{
		 text-decoration: none;
		}
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
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0 fs-6 align-items-center gap-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp"
              >Home</a
            >
          </li>
         
         
          <li class="nav-item">
            <a class="nav-link" href="Signup.jsp"
              >Sign Up</a
            >
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
</section>
  
    <div class="container">
      <div
        class="row align-items-center justify-content-center"
        style="min-height: 90vh"
      >
        <div
          class="col-12 col-md-8 col-lg-5 animate__animated animate__fadeInLeft"
        >
          <div
            class="border shadow p-5 rounded m-auto"
            style="max-width: 500px"
          >
            <h3 class="text-center mb-4 fs-2">Log In</h3>
            <form
              action="home"
              class="d-flex flex-column align-content-around"
            >
            <div class="mb-3">
            	<span class="text-danger"><% String warning =(String) request.getAttribute("Message");
									if (warning!= null) %><%= warning %></span>
            </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input
                  required
                  type="email"
                  class="form-control"
                  name="email"
                  id="email"
                  placeholder="example@gmail.com"
                />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input
                  required
                  type="password"
                  class="form-control"
                  name="password"
                  id="password"
                  placeholder="1234567890"
                />
              </div>
        <span><p>Don't have an account? <a href="Signup.jsp" class="custom-link" style= "Margin-right : 50px;">SignUp</a> <a href="Signup.jsp" class="custom-link">Forgot Password</a></p></span>
              
              <input
                required
                type="submit"
                class="btn btn-outline-light fs-5 px-3 w-75 align-self-center shadow"
                value="Login"
              />
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
    <script src="index.js"></script>
  </body>
</html>

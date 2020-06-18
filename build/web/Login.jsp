<!doctype html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    
    <title>EverFineClinic | By Einstein</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/pricing/">
    <link href="css/MIS.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
    
</head>
<body>
  

  <div class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-info border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal"><span class="justice">E</span>FC</h5>
   
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="index.jsp">Home</a>
        <a class="p-2 text-dark" href="#">About us</a>
        <a class="p-2 text-dark" href="#">Profile</a>
      </nav>

    <a class="btn btn-outline-warning text-dark" href="Login.jsp">Sign in</a>
  </div>
 <section class=""  >
    <div class="container" >
        <div class="row pt-">
            <div class="col-3"></div>

                  <div class="col-lg-6 col-md-6 col-xs-12 cover">
                      <div class="cover-2">
                          <h3 class="h3-login pb-2">Login</h3>
                          <h1 style="color: red"> ${mesg} </h1>
                          <p class="p-proceed pb-2">Enter the required details and click "Login"</p>
                      </div>    
                      <div class="container">
                          <form action="landing" method="POST">


                            <div class="col-md- mb-3">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-phone-square" aria-hidden="true"></i></span>
                                    </div>
                                    <input type="input-group-text" name="phone" class="form-control" id="ph" aria-describedby="emailHelp" placeholder="Phone">
                                  </div>
                              </div>

                              <div class="col-md- mb-3">
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                    </div>
                                    <input type="password" name="password" class="form-control" id="pass" placeholder="Password"> 
                                  </div>
                              </div>
                              <div class="container">
                                    <div class="col-md- mb-3">
                                        <button class="btn btn-lg btn-primary btn-block" type="submit" > Login </button>
                                        <input type="text" name="signal" value="signin" hidden>
                                    </div>

                                    <div class="col-md- mb-3"
                                          <small class="form-text text-muted">Don't have an account yet?"</small>
                                          <a href="index.jsp" class="btn btn-lg btn-warning btn-block" role="button">Register</a>
                                    </div>

                                    <div class="col-md- mb-3">
                                        <div class="text-center">
                                          <a href="#" class="btn" role="button">forgot password?</a>
                                          <input type="text" name="signal" value="forgot" hidden>
                                        </div>
                                    </div>
                              </div>
                                  <p class="p-terms">By Signing in, you agree to <span class="nk"><a href="#">Terms & Conditions</a></span></br>and <span class="nk"><a href="#">Privacy Policy</a></span> of Ever Fine Clinic</p>

                          </form> 
                      </div>
            <div class="col-3"></div>
        </div>
    </div>
  </section class="mb-5 pb-5">
  </section>
  
</body>
</html
  
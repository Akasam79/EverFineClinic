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
    <link rel="stylesheet" type="text/css" href="css/MIS.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >

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
	

    <div class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-light border-bottom shadow-sm " id="navbar">
		<h5 class="my-0 mr-md-auto font-weight-normal"><span class="justice">E</span>FC</h5>
	 
		  <nav class="my-2 my-md-0 mr-md-3">
		    <a class="p-2 text-dark" href="index.jsp">Home</a>
		    <a class="p-2 text-dark" href="#">About us</a>
		    <a class="p-2 text-dark" href="#">Profile</a>
		  </nav>

	  <a class="btn btn-outline-warning text-dark" href="Login.jsp">Sign in</a>
	</div>

	<div class = "header bg-light">
		<h1>
			<marquee> Welcome to ever fine Clinic </marquee>
		</h1>
	</div>

	<section class="bg-dark"  >
    <div class="container" >
        <div class="row pt-12">
            
            <div class="col-3"></div>

			            <div class="col-lg-6 col-md-6 col-xs-12 cover bg-dark">
			                <div class="cover-2">
			                    <h3 class="h3-login pb-2">Sign up here</h3>
			                    <h1 style="color: green"> ${mesg} </h1>
			                    <p class="p-proceed pb-2">Enter the following to proceed</p>
			                </div>    
			                <div >
			                    <form action="landing" method="POST">


			                    	<div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="input-group-text" name="f_name" class="form-control" id="ip" aria-describedby="emailHelp" placeholder="First Name">
			                            </div>
			                        </div>

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="input-group-text" name="l_name" class="form-control" id="ip0" placeholder="Last Name">
			                            </div>
			                        </div>

			                         <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="input-group-text" name="acct_name" class="form-control" id="acctName" placeholder="Account Name">
			                            </div>
			                        </div>

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="input-group-text" name="acct_no" class="form-control" id="acctNo" placeholder="Account Number">
			                            </div>
			                        </div>

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-male" aria-hidden="true"></i></span>
			                              </div>
                                                    <select type="text" name="sex" class="form-control" placeholder="title" id="sex">
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md- mb-3">
                                                <div class="input-group"> 
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                                    </div>       
                                                    <input type="date" name="date" id="DOB" class="form-control" placeholder="DD/MM/YY" ">
                                                </div>
			                    </div>
			                        

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="email" name="email" class="form-control" id="ip1" placeholder="Email Address">
			                            </div>
			                        </div>

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-home" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="input-group-text" name="address" class="form-control" id="ip2" placeholder="Permanent Home Address">
			                            </div>
			                        </div>

			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-phone-square" aria-hidden="true"></i></span>
			                              </div>
			                               <input type="number" name="phone" class="form-control" id="ip3" aria-describedby="emailHelp" placeholder="Phone Number" >
			                            </div>
			                        </div>
                                                
			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-lock" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="password" name="password" class="form-control" id="1p4" placeholder="Password"> 
			                            </div>
			                        </div>
			                        <div class="col-md- mb-3">
			                            <div class="input-group">
			                              <div class="input-group-prepend">
			                                <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-lock" aria-hidden="true"></i></span>
			                              </div>
			                              <input type="password" name="password" class="form-control" id="ip5" placeholder="Comfirm Password"> 
			                            </div>
			                            <small id="emailHelp" class="form-text text-muted">We'll never share your password with anyone else.</small>
			                        </div>
			                    
                                                <div>
			                            <button class="btn btn-lg btn-primary btn-block" type="submit" > Sign up </button>
                                                    <input type="text" name="signal" value="signup" hidden>
                                                </div>
			                            <p class="p-terms">By Signing up, you agree to <span class="nk"><a href="#">Terms & Conditions</a></span></br>and <span class="nk"><a href="#">Privacy Policy</a></span> of Ever Fine Clinic</p>
                                        </form>
			            </div>
            <div class="col-3" ></div>
        </div>
    </div>    
</section>

</section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
	 <script src="js/navbar.js"></script>
</body>
</html

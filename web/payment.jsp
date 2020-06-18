<%@page import="bean.Patient"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
  <link rel="stylesheet" type="text/css" href="css/MISLogin.css">
  <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/pricing/">
  <link href="css/bootstrap.min.css" rel="stylesheet" >
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
  <title>EverFineClinic | By Einstein</title>
</head>

<body>
  

  <div class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-info border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal"><span class="justice">E</span>FC</h5>
   
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="index.jsp">Home</a>
        <a class="p-2 text-dark" href="#">About us</a>
        <a class="p-2 text-dark" href="#">Profile</a>
      </nav>

    <a class="btn btn-outline-warning text-dark" href="allDashboard.jsp">Back to Dashboard</a>
  </div>
    
     <%
            HttpSession w_session = request.getSession();
            Patient w_user = (Patient) w_session.getAttribute("user");
        %>
        
  <section class="">
    <div class = "main">
      <div class = "LS"></div>

      <div class = "card">

        <div class="container">

          <form action="landing" method="POST">
              
              <output name="pay">Payments | Welcome, <%= w_user.getFirstName()%>  <%= w_user.getLastName()%></output>

            <h3> make payments </h3> <h1 style="color:green" > ${msg} </h1>
            <p> Enter the required details and click "Pay Now!"</p>

            <div class="inputs">
              <input type="text" name="phone" id="ph" placeholder="Enter Card Number" height="50" autofocus> <br/>
            </div>
            
            <div class="inputs">
              <input type="email" name="email" id="ph" placeholder="Enter your email Address" height="50"> <br/>
            </div>

            <div class="inputs">
              <input type="password" name="password" id="pass" placeholder=" Enter your trasnfer pin"  height="50"> <br />
            </div>

            <small id="emailHelp" class="form-text text-muted">We'll never share your secret number with anyone else.</small>

            <div class="SI">  
              <button  type="submit" value="submit" style=" padding: none; border: none; background:none;"> Pay Now</button>
              <input type="text" name="signal" value="pay" hidden>
            </div>

          </form> 
        </div>
      </div>
      <div class = "LS"></div>
    </div>
  </section class="mb-5 pb-5">
  </section>
  
</body>
</html
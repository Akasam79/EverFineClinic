<%@page import="bean.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <title>EFC | Dashboard</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
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
        <link href="css/dashboard.css" rel="stylesheet">
    </head>
    <body>
        
        <div class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-info border-bottom shadow-sm">
            <h5 class="my-0 mr-md-auto font-weight-normal"><span class="justice">E</span>FC</h5>

              <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="index.jsp">Home</a>
                <a class="p-2 text-dark" href="#">About us</a>
                <a class="p-2 text-dark" href="editProfile.jsp">Edit Profile</a>
              </nav>

            <a class="btn btn-outline-warning text-dark" href="Login.jsp">Sign in</a>
        </div>
        
        <div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <span data-feather="home"></span>
              Dashboard <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="profile.jsp">
              <span data-feather="file"></span>
              my profile
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="editProfile.jsp">
              <span data-feather="shopping-cart"></span>
              edit profile
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="users"></span>
              payment status
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="payment.jsp">
              <span data-feather="bar-chart-2"></span>
              Make Payment
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers"></span>
              Integrations
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
          <span>Saved reports</span>
          <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Current month
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Last quarter
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Social engagement
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="file-text"></span>
              Year-end sale
            </a>
          </li>
        </ul>
      </div>
    </nav>

        
        <%
            HttpSession w_session = request.getSession();
            Patient w_user = (Patient) w_session.getAttribute("user");
        %>
        
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard | Welcome, <%= w_user.getFirstName()%>  <%= w_user.getLastName()%></h1>
                        
                        <div class="btn-toolbar mb-2 mb-md-0">
                            <div class="btn-group mr-2">
                                <button type="button" class="btn btn-sm btn-outline-secondary">Profile</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Admissions</button>
                            </div>
                            <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                                <span data-feather="calendar"></span>
                                Payments
                            </button>
                            <input type="text" name="signal" value="pay" hidden>
                        </div>
                    </div>
                    
                        <h1 class = "h2" style="color:Green">Current Status: <%= w_user.getStatus()%></h1>
<!--                        <canvas class="my-4 w-100" id="myChart" width="900" height="380">
                            
                        </canvas>-->
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">My profile</h1>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-subtitle mb-2" style="color:${color};">${info}</h5>
                           
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="f_name">First Name</label>
                                      <output type="text" name="f_name" class="form-control" placeholder="First Name">
                                          <%= w_user.getFirstName()%>
                                      </output>
                                    </div>
                                    <div class="form-group col-md-6">
                                      <label for="l_name">Last Name</label>
                                      <output type="text" name="l_name" class="form-control" placeholder="Last Name">
                                          <%= w_user.getLastName()%>
                                      </output>
                                    </div>
                                </div>
                            
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="f_name">Account Name</label>
                                      <output type="text" class="form-control" name="accountName">
                                          <%= w_user.getAccountName()%>
                                      </output>
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                      <label for="f_name">Account Number</label>
                                      <output type="text" class="form-control" name="accountNo">
                                           <%= w_user.getAccountNo()%>
                                      </output>
                                    </div>
                                    
                                </div>
                            
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="f_name">Sex</label>
                                      <output type="text" class="form-control" name="sex">
                                           <%= w_user.getSex()%>
                                      </output>
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                      <label for="Date ">Date of birth</label>
                                      <output type="text" class="form-control" name="DOB">
                                           <%= w_user.getDob()%>
                                      </output>
                                    </div>
                                    
                                </div>
                            
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="email">Email</label>
                                      <output type="text" class="form-control" name="email">
                                          <%= w_user.getEmail()%>
                                      </output>
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                      <label for="address">Address</label>
                                      <output type="text" class="form-control" name="address">
                                          <%= w_user.getAddress()%>
                                      </output>
                                    </div>
                                    
                                </div>
                            
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="phone">Phone</label>
                                      <output type="text" class="form-control" name="phone">
                                          <%= w_user.getPhone()%>
                                      </output>
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                      <label for="status">Status</label>
                                      <output type="text" class="form-control" name="status">
                                          <%= w_user.getStatus()%>
                                      </output>
                                    </div>
                                    
                                </div>
                        </div>
                            
<!--                    <h2>Section title</h2>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                  <th>#</th>
                                  <th>Header</th>
                                  <th>Header</th>
                                  <th>Header</th>
                                  <th>Header</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1,001</td>
                                    <td>Lorem</td>
                                    <td>ipsum</td>
                                    <td>dolor</td>
                                    <td>sit</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>-->
                    
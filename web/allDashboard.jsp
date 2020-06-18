<%@page import="org.jboss.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="thinkTank.UserBay"%>
<%@page import="bean.Patient"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Dashboard</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/dashboard/">

    <!-- Bootstrap core CSS -->
<link href="/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


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
    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
  </head>
  <body>
    <div class=" d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-info border-bottom shadow-sm">
            <h5 class="my-0 mr-md-auto font-weight-normal"><span class="justice">E</span>FC</h5>

              <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="index.jsp">Home</a>
                <a class="p-2 text-dark" href="#">About us</a>
                <a class="p-2 text-dark" href="profile.jsp">My Profile</a>
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
            <button type="button" class="btn btn-sm btn-outline-secondary">profile</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Admission</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            Payment Due
          </button>
        </div>
      </div>
        
         <h1 class = "h2" style="color:Green">Current Status: <%= w_user.getStatus()%></h1>
         
         <%
         
                try(Connection conn = UserBay.dbConnect()){
                    String sql = "SELECT * FROM payments";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    ResultSet res = stmt.executeQuery();
                             if(res.next()== false){
       
         %>
                            <h3> Hello <%= w_user.getFirstName()%>, Please Proceed to pay your initial Registration fee of #1000 to activate payment platform</h3>
                            <small class="form-text text-muted">Proceed and click on make payments, to clear bill and activate payment!</small>
                            
         <%
                             }
                  
                while(res.next()){
                    
                    String email = res.getString("email");
                    if(email.equals(w_user.getEmail())){
                    
                    
                        try(Connection con = UserBay.dbConnect()){
                            String query = "SELECT max(id) FROM payments GROUP BY email";
                            PreparedStatement stm = con.prepareStatement(query);
                            ResultSet rs = stm.executeQuery();
                            while(rs.next()){ 
                                
                                if (rs.getString("max(id)").equals(res.getString("id"))){
          %>
                    <h3> Hello <%= w_user.getFirstName()%>, your outstanding bill is <%= res.getString("bill")%></h3>
          <%
                          res.close();
                          break;
                           }}}catch(SQLException e){}
                }
                }
                }
                catch(SQLException e){}
          %>
        
                                
<!-- 
      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

      <h2>Section title</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>S/N</th>
              <th>DATE ADMITTED</th>
              <th>DATE DISCHARGED</th>
              <th>AILMENT DESCRIPTION</th>
            </tr>
          </thead>
          
          <%
          
          try(Connection Conn = UserBay.dbConnect()){
                           String query = "SELECT * FROM user";
                           PreparedStatement statement = Conn.prepareStatement(query);
                           ResultSet res = statement.executeQuery();

                           while(res.next())
                               {
                                  String email = res.getString("email");
                                      if(email.equals(w_user.getEmail())){
                                          try(Connection dbConn = UserBay.dbConnect()){
                                                String Sql = "SELECT * FROM payments";
                                                PreparedStatement stmt = dbConn.prepareStatement(Sql);
                                                ResultSet result = stmt.executeQuery();

                                                while(result.next())
                                                    {
                                                       String Pat_email = result.getString("email");
                                                           if(Pat_email.equals(w_user.getEmail())){

                        


          
          %>
          
          <tbody>
            <tr>
              <td><%=result.getString("id")%></td>
              <td><%=res.getString("admit_time")%></td>
              <td><%=result.getString("date_paid")%></td>
              <td></td>
            </tr>
            <%
            
                        }
                       }
                        }catch(SQLException e){}
                        }
                 }
                }catch(SQLException e){}
            %>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
        <script src="dashboard.js"></script></body>
</html>

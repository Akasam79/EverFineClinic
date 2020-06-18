<%@page import="org.jboss.logging.Logger"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Patient"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="thinkTank.UserBay"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <title>EverFineClinic| Manage Users</title>

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
                            <a class="p-2 text-dark" href="#">Profile</a>
                          </nav>

                        <a class="btn btn-outline-warning text-dark" href="Login.jsp">Sign in</a>
                </div>
        
                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Manage Users</h1>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-subtitle mb-2" style="color:${color};">${msg}</h5>
                            <form action="landing" method="POST">
<!--                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="f_name">First Name</label>
                                      <input type="text" name="f_name" class="form-control" id="f_name" placeholder="First Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                      <label for="l_name">Last Name</label>
                                      <input type="text" name="l_name" class="form-control" id="l_name" placeholder="Last Name">
                                    </div>
                                </div>-->
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="f_name">Phone Number</label>
                                      <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number" maxlength="11">
                                    </div>
                                    <div class="form-group col-md-6">
                                      <label for="role">Status</label>
                                      <select id="role" name="status" class="form-control">
                                        <option value="nil" selected>Choose...</option>
                                        <option value="fire">Admitted</option>
                                      </select>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary">Admit Patient</button><br />
                                <input type="text" name="signal" value="Admit" hidden>

                                
                             
                            </form>
                            
                            
                            
                            <h2 style="padding-top:30px;">Existing Users</h2>
                            <h5 class="h5 mb-3 font-weight-normal" style="color:blue;" id="feedback">${msg}</h5>
                            <form action="landing" method="POST">
                                                <div class="form-row">
                                                    <div class="form-group col-md-6">
                                                      <label for="email">email</label>
                                                      <input type="email" class="form-control" name="email" id="email" placeholder="Email Address">
                                                    </div>
                                                    <div class="form-group col-md-6"> 
                                                        <label for="f_name">Set Bill (#)</label>
                                                        <input class="form-control" type="integer" name="bill" id="bill" placeholder="Set Bill">
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Set Bill</button><br />
                                                <input type="text" name="signal" value="bill" hidden>
                            </form>
                            <div class="table-responsive">
                                <table class="table table-striped table-sm">
                                    <thead>
                                        <tr>
                                          <th>S/N</th>
                                          <th>Phone Number</th>
                                          <th>First Name</th>
                                          <th>Last Name</th>
                                          <th>Status</th>
                                          <th>Bill</th>
                                        </tr>
                                    </thead>
                                    <%
                                        try (Connection dbConn = UserBay.dbConnect()){
                                            String sql = "SELECT * FROM user";
                                            PreparedStatement stmt = dbConn.prepareStatement(sql);
                                            ResultSet result = stmt.executeQuery();
                                            
                                            while(result.next()){
                                                try(Connection conn = UserBay.dbConnect()){
                                                    String query = "SELECT * FROM payments";
                                                    PreparedStatement statement = conn.prepareStatement(query);
                                                    ResultSet res = statement.executeQuery();

                                                    while(res.next()){
                                                        try(Connection con = UserBay.dbConnect()){
                                                                String query2 = "SELECT max(id) FROM payments GROUP BY email";
                                                                PreparedStatement stm = con.prepareStatement(query2);
                                                                ResultSet rs = stm.executeQuery();
                                                                while(rs.next()){ 
                                
                                                                    if (rs.getString("max(id)").equals(res.getString("id"))){
                                                                        String email = res.getString("email");
                                                                        if(email.equals(result.getString("email"))){
                                     %>
                                     
                                    <tbody>
                                        <tr>
                                            <td><%= result.getString("id")%></td>
                                            <td><%= result.getString("phone")%></td>
                                            <td><%= result.getString("f_name")%></td>
                                            <td><%= result.getString("l_name")%></td>
                                            <td><%= result.getString("status")%></td>
                                            <td>#<%= res.getString("bill")%></td>
                                        </tr>
                                        
                                     <%
                                      }
                                        }
                                                }}catch(SQLException e){}
                                            }
                                        }catch(SQLException e){}
                                                
                                            }}catch(SQLException e){}
                                    %>
                                        
                                    </tbody>
                                </table>
                            </div>

                            
                        </div>
                    </div>
                </main>
            </div>
        </div>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
    <script src="js/dashboard.js"></script>
    <script src="js/manageuser.js"></script>
</body>
</html>  



package thinkTank;

import bean.Patient;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Clinic", urlPatterns = {"/Clinic", "/landing"})
public class Clinic extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        String url = "/index.jsp";
        String mesg = null;
        HttpSession session = request.getSession();
        boolean forward = true;
        String msg = "";
        String signal = request.getParameter("signal");
        
                
        switch(signal){
            case "signin":
                String phone = request.getParameter("phone");
                String password = request.getParameter("password");
                
                if (phone.equals("08139749489")){
                    
                    getServletContext().getRequestDispatcher("/manageusers.jsp").forward(request, response);
                

                } else{
                     ArrayList<String> loginRes = UserBay.login(phone, password);
                String key_res = loginRes.get(8);
                
                switch(key_res){     
                    case "succeed":
                        url = "/allDashboard.jsp";
                         Patient user = new Patient(loginRes.get(0), loginRes.get(1), loginRes.get(2), loginRes.get(3),loginRes.get(4), loginRes.get(5), loginRes.get(6), loginRes.get(7), phone, loginRes.get(9));
                        session.setAttribute("user", user);
                        request.setAttribute("user", user);
                        break;
                       
                
                    case "failed":
                        msg = "Authentication failed";
                        break;
                    case "none":
                        msg = "Sorry, no such account found.";
                        break;
                    default:
                        msg = "We're currently experiencing server issues. Please, try later.";
                        break;
                        
                }
                
                break;
                }
            
            case "Admit":
                url ="/manageusers.jsp";
                String color;
                String phone2 = request.getParameter("phone");
                String admit_time = request.getParameter("admit_time");
                
                  boolean resp = UserBay.admit(phone2, admit_time);
                  
                  if (!resp){
                      
                      color = "green";
                      msg= "patient admitted successfully";
                  }else{
                      color="red";
                      msg="action failed";
                  }
            break;
                
            case "bill":
                url = "/manageusers.jsp";
                String amount = request.getParameter("bill");
                String Patient_email = request.getParameter("email");
                
                        boolean result = UserBay.bill(amount, Patient_email);

                        if (!result){
                            msg="SUCCESS";
                        }else{
                            msg="failed";
                        }
                
            break;
            
            case "pay" :
                msg = "invalid email";
                url = "/payment.jsp";
                String card_no = request.getParameter("phone");
                String dep_email = request.getParameter("email");
                String date_paid = request.getParameter("now");
                
                HttpSession w_session = request.getSession();
                Patient w_user = (Patient) w_session.getAttribute("user");
                
                boolean valid = UserBay.validation(card_no, date_paid, dep_email);
                if(dep_email.equals(w_user.getEmail())){
                    
                    
                    boolean res =  UserBay.payments(card_no, date_paid, dep_email);
                    
                    if(!res){
                        request.getParameter("email");
                        boolean change = UserBay.chngStatus(dep_email);
                    msg = "Payment Successful!";
                    }else{
                        msg = "Oops! Something went wrong.";
                    }
                }
               
                else{
                    request.setAttribute("msg", msg);
                    
                }
         break;
                    
      
            case "signup":   
                url="/Login.jsp";
                String firstName = request.getParameter("f_name");
                String lastname = request.getParameter("l_name");
                String accountName = request.getParameter("acct_name");
                String accountNo = request.getParameter("acct_no");
                String sex = request.getParameter("sex");
                String dob = request.getParameter("date");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                phone = request.getParameter("phone");
                password = request.getParameter("password");

        boolean c_res = UserBay.createUser(firstName, lastname, accountName, accountNo, sex, dob, email, address, phone, password);

         if(!c_res){
             
                    mesg = "New Patient details logged to Database Successfully!";
                }else{
                    mesg = "Oops! Something went wrong.";
                }
         break;
            default:
                break;
        }
                request.setAttribute("msg", msg);
                 request.setAttribute("mesg", mesg);
        getServletContext().getRequestDispatcher(url).forward(request, response);
        
        
    }

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Clinic.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Clinic.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


package thinkTank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import static java.time.Instant.now;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class UserBay {
    
        
    public static Connection dbConnect () throws ClassNotFoundException, SQLException{
        
        String URL = "jdbc:mysql://localhost:3307/everfineclinic?useSSL=false&serverTimezone=Africa/Lagos";
        String USERNAME = "root" ;
        String PASSWORD = "Prescotcruzy9" ;
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        
    }
    
    public static boolean createUser(String f_name, String l_name, String acct_name, String acct_no, String sex, String dob, String email, String address, String phone, String password)
            throws ClassNotFoundException, IOException {
        
        try(Connection conn = UserBay.dbConnect()){
            String query = "INSERT INTO user (f_name, l_name, acct_name, acct_no, sex, dob, email, address, phone, password)"+
                    "VALUES (?,?,?,?,?,?,?,?,?,?) ";
            PreparedStatement statement = conn.prepareStatement(query);
            
            statement.setString(1, f_name);
            statement.setString(2, l_name);
            statement.setString(3, acct_name);
            statement.setString(4, acct_no);
            statement.setString(5, sex);
            statement.setString(6, dob);
            statement.setString(7, email);
            statement.setString(8, address);
            statement.setString(9, phone);
            statement.setString(10, password);
            return statement.execute();
            
        }
        
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
    }
    
    public static boolean payments(String card_no, String date_paid, String email)
            throws ClassNotFoundException, IOException {
        Timestamp now = new Timestamp(new Date().getTime());
        try(Connection conn = UserBay.dbConnect()){
            
            String query = "INSERT INTO payments (card_no, date_paid, email)"+
                    "VALUES (?,?,?) ";
            PreparedStatement statement = conn.prepareStatement(query);
            
            statement.setString(1, card_no);
            statement.setTimestamp(2, now);
            statement.setString(3, email);
            return statement.execute();
            
        }
        
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
       
       
    }
    
    public static boolean validation(String f_name,String email, String phone)
            throws ClassNotFoundException{
        try(Connection dbconn = UserBay.dbConnect()){
            String query = "SELECT * FROM user";
            PreparedStatement stmt = dbconn.prepareStatement(query);
            stmt.setString(1, f_name); 
            stmt.setString(7, email);
            stmt.setString(9, phone);
            return stmt.execute();
        }
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
    }
//    public static boolean validateBill(String email)
//            throws ClassNotFoundException{
//        try(Connection dbconn = UserBay.dbConnect()){
//            String query = "SELECT `status` FROM user WHERE email = ?";
//            PreparedStatement stmt = dbconn.prepareStatement(query);
//            stmt.setString(1, email);
//           
//            return stmt.execute();
//            
//        }
//        catch(SQLException e){
//            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
//            return true;
//        }
//    }
    
    public static boolean chngStatus(String email)
            throws ClassNotFoundException, IOException {
        
        try(Connection conn = UserBay.dbConnect()){
            String query ="UPDATE user SET `status` = 'Activated' WHERE email = ?";
            
            PreparedStatement statement = conn.prepareStatement(query);
            
            statement.setString(1, email);
            return statement.execute();
            
        }
        
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
       
       
    }
    
     public static ArrayList<String> login(String phone, String password) throws 
            ClassNotFoundException {
        ArrayList res = new ArrayList();
        try(Connection conn = dbConnect()){
            String query = "SELECT * FROM user WHERE phone = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, phone);
            
            ResultSet result = statement.executeQuery();
            if(result.next()){
                 String pass = result.getString("password");
                 
                 if(pass.equals(password)){
                     
                        res.add(result.getString("f_name"));
                        res.add(result.getString("l_name"));
                        res.add(result.getString("acct_name"));
                        res.add(result.getString("acct_no"));
                        res.add(result.getString("sex"));
                        res.add(result.getString("dob"));
                        res.add(result.getString("email"));
                        res.add(result.getString("address"));
                        res.add("succeed");
                        res.add(result.getString("status"));
                }
                 
                 else{
                    res.add("failed");
                }
            }
            else{
                res.add("none");
                } 
            }
            
            catch(SQLException e){
            Logger.getLogger(Clinic.class.getName()).log(Level.SEVERE, password, e);
            res.add("error");
        }
        return res;
    }
     
     public static boolean bill( String email, String bill) throws ClassNotFoundException
     , IOException {
         try(Connection  conn = UserBay.dbConnect()){
             String query = "UPDATE payments SET `bill` = ? WHERE email = ?";
             PreparedStatement stmt = conn.prepareStatement(query);
             
             stmt.setString(1, email);
             stmt.setString(2, bill);
             return stmt.execute();
         }
         
         catch(SQLException e){
             Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
             return true;
         }
     }
     
      public static boolean chngBill(String email)
            throws ClassNotFoundException, IOException {
        
        try(Connection conn = UserBay.dbConnect()){
            String query ="UPDATE payments SET `bill` = 'paid' WHERE email = ?";
            
            PreparedStatement statement = conn.prepareStatement(query);
            
            statement.setString(1, email);
            return statement.execute();
            
        }
        
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
       
       
    }
     
      public static boolean admit(String phone, String admit_time)
            throws ClassNotFoundException, IOException {
        Timestamp now = new Timestamp(new Date().getTime());
        try(Connection conn = UserBay.dbConnect()){
            String query ="UPDATE user SET `status` = 'Admitted', `admit_time` = ? WHERE phone = ?";
            
            PreparedStatement statement = conn.prepareStatement(query);
            
            
            statement.setTimestamp(1, now);
            statement.setString(2, phone);
            return statement.execute();
            
            
        }
        
        catch(SQLException e){
            Logger.getLogger(UserBay.class.getName()).log(Level.SEVERE, null, e);
            return true;
        }
       
       
    }
    
     
}
            
        
        


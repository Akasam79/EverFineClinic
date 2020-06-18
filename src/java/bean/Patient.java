
package bean;

import java.io.Serializable;

public class Patient implements Serializable {
    
    private String firstName;
    private String lastName;
    private String accountName;
    private String accountNo;
    private String sex;
    private String dob;
    private String email;
    private String address;
    private String phone;
    private String status;

    

    
public Patient(String firstName, String lastName, String accountName, String accountNo, String sex, String dob, String email, String address, String phone, String status) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.accountName = accountName;
        this.accountNo = accountNo;
        this.sex = sex;
        this.dob = dob;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.status = status;
    }

public Patient() {
        this.firstName = "";
        this.lastName = "";
        this.accountName = "";
        this.accountNo = "";
        this.sex = "";
        this.dob = "";
        this.email = "";
        this.address = "";
        this.phone = "";
        this.status = "";
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getAccountName() {
        return accountName;
    }

    public String getAccountNo() {
        return accountNo;
    }

    public String getSex() {
        return sex;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }
    
    public String getStatus() {
        return status;
    }
    
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    
}

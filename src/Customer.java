/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class Customer {
   
    String cName,cSurname, cAddress,cPhone, cSex, cDOB;
    public Customer(String fname,String lname,String address, String phone,String sex, String dob){
        this.cName = fname;
        this.cSurname = lname;
        this.cAddress = address;
        this.cPhone = phone;
        this.cSex = sex;
        this.cDOB = dob;
    }
    
     public String getcName() {
        return cName;
    }

    public String getcSurname() {
        return cSurname;
    }

    public String getcAddress() {
        return cAddress;
    }

    public String getcPhone() {
        return cPhone;
    }

    public String getcSex() {
        return cSex;
    }

    public String getcDOB() {
        return cDOB;
    }
    
}

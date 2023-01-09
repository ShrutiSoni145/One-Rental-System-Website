package com.project.bean;

public class UserBean {
    private String Name;
    private String Password;
    private String Address;
    private String Email;
    private String Mobile;
    
    public void Userbean() {
    	
    }
    
    public void Userbean(String Name,String Password,String Address,String Email,String mobile) {
    	this.Name=Name;
    	this.Password=Password;
    	this.Address=Address;
    	this.Email=Email;
    	this.Mobile=mobile;
    	
    	
    }
     
    
    
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}

        
}
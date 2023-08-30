package com.helpingehand.helpingehand.models;

import java.util.Date;



public class UserDataModel {
	public int id;
	public String firstName;
	public String lastName;
	public String emailId;
	public int mobile;
	public int isAdmin;
	public Date createdDate;
	
	
	 public UserDataModel ( int id ,String firstName, String lastName,String emailId,int mobile,int isAdmin ,Date createdDate) 
	 {
		 this.id =id;
		 this.firstName=firstName;
		 this.lastName=lastName;
		 this.emailId=emailId;
		 this.mobile=mobile;
		 this.isAdmin=isAdmin;
		 this.createdDate=createdDate;
		 
	 }
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public int getMobile() {
		return mobile;
	}
	public void setMobile(int mobile) {
		this.mobile = mobile;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
}


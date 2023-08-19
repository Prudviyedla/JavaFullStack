package com.LandR.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "admin")
public class Admin {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

	private long id;
	private String username;
	private String password;
	private int number;
	private String emailId;
	private String dob;
	
	
	
	
	public Admin() {
		super();
	}




	public Admin(long id, String username, String password, int number, String emailId, String dob) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.number = number;
		this.emailId = emailId;
		this.dob = dob;
	}




	public long getId() {
		return id;
	}




	public void setId(long id) {
		this.id = id;
	}




	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public int getNumber() {
		return number;
	}




	public void setNumber(int number) {
		this.number = number;
	}




	public String getEmailId() {
		return emailId;
	}




	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}




	public String getDob() {
		return dob;
	}




	public void setDob(String dob) {
		this.dob = dob;
	}




	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", number=" + number
				+ ", emailId=" + emailId + ", dob=" + dob + "]";
	}


	
}

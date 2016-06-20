package com.latzchaat.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

@Table(name = "UserDetails")
@Entity

public class UserDetails implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "uid")
	private int id;
	@Column(name = "fname")
	private String fname;
	@Column(name = "lname")
	private String lname;
	@Column(name = "displayname")
	private String displayname;
	@Column(name = "email")
	private String email;
	@Column(name = "password")
	private String password;
	@Transient
	private String confirmpassword;
	@Transient
	private MultipartFile image;
	@Column(name = "enabled")
	private int enabled;
	@Column(name = "role")
	private String role;

	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDisplayname() {
		return displayname;
	}

	public void setDisplayname(String displayname) {
		this.displayname = displayname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

}

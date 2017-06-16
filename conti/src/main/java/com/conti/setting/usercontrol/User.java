package com.conti.setting.usercontrol;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;

import javax.persistence.Table;


import org.codehaus.jackson.annotate.JsonIgnoreProperties;



@Entity
@Table(name="a_user")
@JsonIgnoreProperties(ignoreUnknown = true)
public class User {
	
	private int company_id, user_id, branch_id, role_id;
	private String username, userpassword, user_empcode, user_phoneno, user_emailid; 
	private String created_datetime, updated_datetime;
	
	@Column(name = "company_id")
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	@Id
	@Column(name = "user_id")
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	@Column(name = "branch_id")
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
	@Column(name = "role_id")
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	@Column(name = "username")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Column(name = "userpassword")
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	@Column(name = "user_empcode")
	public String getUser_empcode() {
		return user_empcode;
	}
	public void setUser_empcode(String user_empcode) {
		this.user_empcode = user_empcode;
	}
	@Column(name = "user_phoneno")
	public String getUser_phoneno() {
		return user_phoneno;
	}
	public void setUser_phoneno(String user_phoneno) {
		this.user_phoneno = user_phoneno;
	}
	@Column(name = "user_emailid")
	public String getUser_emailid() {
		return user_emailid;
	}
	public void setUser_emailid(String user_emailid) {
		this.user_emailid = user_emailid;
	}
	@Column(name = "created_datetime")
	public String getCreated_datetime() {
		return created_datetime;
	}
	public void setCreated_datetime(String created_datetime) {
		this.created_datetime = created_datetime;
	}
	@Column(name = "updated_datetime")
	public String getUpdated_datetime() {
		return updated_datetime;
	}
	public void setUpdated_datetime(String updated_datetime) {
		this.updated_datetime = updated_datetime;
	}
	
	
	
}

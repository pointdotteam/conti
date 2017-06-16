package com.conti.setting.usercontrol;



import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;

import javax.persistence.Table;





@Entity
@Table(name="a_userpriviledge")
public class UserPrivilege {
	
	/*private int User_id,UserPrivilege_Id,branch_id,Role_Id;
	private String Role_MenuName,Role_ScreenName,UserPrivilege_ADD,UserPrivilege_DELETE,
	UserPrivilege_MODIFY,UserPrivilege_PRINT,UserPrivilege_VIEW,UserPrivilege_CreatedDate,
	UserPrivilege_UpdatedDate,Obsolete,Active,role_name;
	
	@Column(name = "Role_Name")
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	@Column(name = "User_id")
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	
			
	@Column(name = "branch_id")	
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
	@Id
	@Column(name = "UserPrivilege_Id")
	public int getUserPrivilege_Id() {
		return UserPrivilege_Id;
	}
	public void setUserPrivilege_Id(int userPrivilege_Id) {
		UserPrivilege_Id = userPrivilege_Id;
	}
	@Column(name = "Role_Id")
	public int getRole_Id() {
		return Role_Id;
	}
	public void setRole_Id(int role_Id) {
		Role_Id = role_Id;
	}
	@Column(name = "Role_MenuName")
	public String getRole_MenuName() {
		return Role_MenuName;
	}
	public void setRole_MenuName(String role_MenuName) {
		Role_MenuName = role_MenuName;
	}
	@Column(name = "Role_ScreenName")
	public String getRole_ScreenName() {
		return Role_ScreenName;
	}
	public void setRole_ScreenName(String role_ScreenName) {
		Role_ScreenName = role_ScreenName;
	}
	@Column(name = "UserPrivilege_ADD")
	public String getUserPrivilege_ADD() {
		return UserPrivilege_ADD;
	}
	public void setUserPrivilege_ADD(String userPrivilege_ADD) {
		UserPrivilege_ADD = userPrivilege_ADD;
	}
	@Column(name = "UserPrivilege_DELETE")
	public String getUserPrivilege_DELETE() {
		return UserPrivilege_DELETE;
	}
	public void setUserPrivilege_DELETE(String userPrivilege_DELETE) {
		UserPrivilege_DELETE = userPrivilege_DELETE;
	}
	@Column(name = "UserPrivilege_MODIFY")
	public String getUserPrivilege_MODIFY() {
		return UserPrivilege_MODIFY;
	}
	public void setUserPrivilege_MODIFY(String userPrivilege_MODIFY) {
		UserPrivilege_MODIFY = userPrivilege_MODIFY;
	}
	@Column(name = "UserPrivilege_PRINT")
	public String getUserPrivilege_PRINT() {
		return UserPrivilege_PRINT;
	}
	public void setUserPrivilege_PRINT(String userPrivilege_PRINT) {
		UserPrivilege_PRINT = userPrivilege_PRINT;
	}
	@Column(name = "UserPrivilege_VIEW")
	public String getUserPrivilege_VIEW() {
		return UserPrivilege_VIEW;
	}
	public void setUserPrivilege_VIEW(String userPrivilege_VIEW) {
		UserPrivilege_VIEW = userPrivilege_VIEW;
	}
	@Column(name = "UserPrivilege_CreatedDate")
	public String getUserPrivilege_CreatedDate() {
		return UserPrivilege_CreatedDate;
	}
	public void setUserPrivilege_CreatedDate(String userPrivilege_CreatedDate) {
		UserPrivilege_CreatedDate = userPrivilege_CreatedDate;
	}
	@Column(name = "UserPrivilege_UpdatedDate")
	public String getUserPrivilege_UpdatedDate() {
		return UserPrivilege_UpdatedDate;
	}
	public void setUserPrivilege_UpdatedDate(String userPrivilege_UpdatedDate) {
		UserPrivilege_UpdatedDate = userPrivilege_UpdatedDate;
	}
	@Column(name = "Obsolete")
	public String getObsolete() {
		return Obsolete;
	}
	public void setObsolete(String obsolete) {
		Obsolete = obsolete;
	}
	@Column(name = "Active")
	public String getActive() {
		return Active;
	}
	public void setActive(String active) {
		Active = active;
	}*/
	
	
	private int userprivilege_id, branch_id, user_id, role_id;
	private String role_menuname, role_screenname, userprivilege_add, userprivilege_delete, userprivilege_modify, userprivilege_print, userprivilege_view, created_datetime, updated_datetime,obsolete, active, role_name;
	
	@Id
	@Column(name = "userprivilege_id")
	public int getUserprivilege_id() {
		return userprivilege_id;
	}
	public void setUserprivilege_id(int userprivilege_id) {
		this.userprivilege_id = userprivilege_id;
	}
	@Column(name = "branch_id")
	public int getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(int branch_id) {
		this.branch_id = branch_id;
	}
	@Column(name = "user_id")
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	@Column(name = "role_id")
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	@Column(name = "role_menuname")
	public String getRole_menuname() {
		return role_menuname;
	}
	
	public void setRole_menuname(String role_menuname) {
		this.role_menuname = role_menuname;
	}
	@Column(name = "role_screenname")
	public String getRole_screenname() {
		return role_screenname;
	}
	public void setRole_screenname(String role_screenname) {
		this.role_screenname = role_screenname;
	}
	@Column(name = "userprivilege_add")
	public String getUserprivilege_add() {
		return userprivilege_add;
	}
	
	public void setUserprivilege_add(String userprivilege_add) {
		this.userprivilege_add = userprivilege_add;
	}
	@Column(name = "userprivilege_delete")
	public String getUserprivilege_delete() {
		return userprivilege_delete;
	}
	public void setUserprivilege_delete(String userprivilege_delete) {
		this.userprivilege_delete = userprivilege_delete;
	}
	@Column(name = "userprivilege_modify")
	public String getUserprivilege_modify() {
		return userprivilege_modify;
	}
	public void setUserprivilege_modify(String userprivilege_modify) {
		this.userprivilege_modify = userprivilege_modify;
	}
	@Column(name = "userprivilege_print")
	public String getUserprivilege_print() {
		return userprivilege_print;
	}
	public void setUserprivilege_print(String userprivilege_print) {
		this.userprivilege_print = userprivilege_print;
	}
	@Column(name = "userprivilege_view")
	public String getUserprivilege_view() {
		return userprivilege_view;
	}
	public void setUserprivilege_view(String userprivilege_view) {
		this.userprivilege_view = userprivilege_view;
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
	@Column(name = "obsolete")
	public String getObsolete() {
		return obsolete;
	}
	public void setObsolete(String obsolete) {
		this.obsolete = obsolete;
	}
	@Column(name = "active")
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	
	@Column(name = "role_name")
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	
	
	
	
}

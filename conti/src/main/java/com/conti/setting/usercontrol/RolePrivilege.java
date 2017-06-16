package com.conti.setting.usercontrol;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;

import javax.persistence.Table;



@Entity
@Table(name="a_roleprivilege")
public class RolePrivilege {

	private int RolePrivilege_Id,Role_Id;
	private String Role_MenuName,Role_ScreenName,Role_ADD,Role_MODIFY,Role_DELETE,Role_PRINT,Role_VIEW,
	Role_CreatedDate,Role_UpdatedDate,Obsolete,Active;
	@Id
	@Column(name = "roleprivilege_Id")
	public int getRolePrivilege_Id() {
		return RolePrivilege_Id;
	}
	public void setRolePrivilege_Id(int rolePrivilege_Id) {
		RolePrivilege_Id = rolePrivilege_Id;
	}
	
	@Column(name = "role_id")
	public int getRole_Id() {
		return Role_Id;
	}
	public void setRole_Id(int role_Id) {
		Role_Id = role_Id;
	}
	@Column(name = "role_menuname")
	public String getRole_MenuName() {
		return Role_MenuName;
	}
	public void setRole_MenuName(String role_MenuName) {
		Role_MenuName = role_MenuName;
	}
	@Column(name = "role_screenname")
	public String getRole_ScreenName() {
		return Role_ScreenName;
	}
	public void setRole_ScreenName(String role_ScreenName) {
		Role_ScreenName = role_ScreenName;
	}
	@Column(name = "role_add")
	public String getRole_ADD() {
		return Role_ADD;
	}
	public void setRole_ADD(String role_ADD) {
		Role_ADD = role_ADD;
	}
	@Column(name = "role_modify")
	public String getRole_MODIFY() {
		return Role_MODIFY;
	}
	public void setRole_MODIFY(String role_MODIFY) {
		Role_MODIFY = role_MODIFY;
	}
	@Column(name = "role_delete")
	public String getRole_DELETE() {
		return Role_DELETE;
	}
	public void setRole_DELETE(String role_DELETE) {
		Role_DELETE = role_DELETE;
	}
	@Column(name = "role_print")
	public String getRole_PRINT() {
		return Role_PRINT;
	}
	public void setRole_PRINT(String role_PRINT) {
		Role_PRINT = role_PRINT;
	}
	@Column(name = "role_view")
	public String getRole_VIEW() {
		return Role_VIEW;
	}
	public void setRole_VIEW(String role_VIEW) {
		Role_VIEW = role_VIEW;
	}
	@Column(name = "created_datetime")
	public String getRole_CreatedDate() {
		return Role_CreatedDate;
	}
	public void setRole_CreatedDate(String role_CreatedDate) {
		Role_CreatedDate = role_CreatedDate;
	}
	@Column(name = "updated_datetime")
	public String getRole_UpdatedDate() {
		return Role_UpdatedDate;
	}
	public void setRole_UpdatedDate(String role_UpdatedDate) {
		Role_UpdatedDate = role_UpdatedDate;
	}
	@Column(name = "obsolete")
	public String getObsolete() {
		return Obsolete;
	}
	public void setObsolete(String obsolete) {
		Obsolete = obsolete;
	}
	@Column(name = "active")
	public String getActive() {
		return Active;
	}
	public void setActive(String active) {
		Active = active;
	}
	
}
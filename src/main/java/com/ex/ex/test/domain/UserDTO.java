package com.ex.ex.test.domain;

public class UserDTO {
	private int userNo;
	private String ID;
	private String password;
	private String name;
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "UserDTO [userNo=" + userNo + ", ID=" + ID + ", password=" + password + ", name=" + name + "]";
	}
	
	
	
	
}

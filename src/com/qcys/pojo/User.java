package com.qcys.pojo;

public class User {
	private long UserID;
	private String UserName;
	private String UserAccount;
	private String UserPassword;
	private char UserSex;
	private String UserProfession;
	private String UserOrganization;
	private char UserClassify;
	public long getUserID() {
		return UserID;
	}
	public void setUserID(long userID) {
		UserID = userID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserAccount() {
		return UserAccount;
	}
	public void setUserAccount(String userAccount) {
		UserAccount = userAccount;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public char getUserSex() {
		return UserSex;
	}
	public void setUserSex(char userSex) {
		UserSex = userSex;
	}
	public String getUserProfession() {
		return UserProfession;
	}
	public void setUserProfession(String userProfession) {
		UserProfession = userProfession;
	}
	public String getUserOrganization() {
		return UserOrganization;
	}
	public void setUserOrganization(String userOrganization) {
		UserOrganization = userOrganization;
	}
	public char getUserClassify() {
		return UserClassify;
	}
	public void setUserClassify(char userClassify) {
		UserClassify = userClassify;
	}
}

package com.qcys.pojo;

public class User {
	private long UserID; // 用户id
	private String UserName; // 用户真实姓名
	private String UserAccount; // 用户登录用户名
	private String UserPassword; // 用户密码
	private char UserSex; // 用户性别
	private String UserProfession; // 用户职业
	private String UserOrganization; // 用户单位名称
	private char UserClassify; // 用户类型
	private String UserEmail; // 用户邮箱
	private String UserPhone; // 用户手机号
	private String UserHeader; // 用户头像

	public String getUserHeader() {
		return UserHeader;
	}

	public void setUserHeader(String userHeader) {
		UserHeader = userHeader;
	}

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

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getUserPhone() {
		return UserPhone;
	}

	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}
}

package com.gld.model.dto;

import java.util.Date;

public class UserDto {
	private String userId;
	private String userPw;
	private String userName;
	private int completedChallenge;
	private String onOffNoty;
	private String userLoginType;
	private String userPhone;
	private Date userBirth;

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDto(String userId, String userPw, String userName, int completedChallenge, String onOffNoty,
			String userLoginType, String userPhone, Date userBirth) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.completedChallenge = completedChallenge;
		this.onOffNoty = onOffNoty;
		this.userLoginType = userLoginType;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getCompletedChallenge() {
		return completedChallenge;
	}

	public void setCompletedChallenge(int completedChallenge) {
		this.completedChallenge = completedChallenge;
	}

	public String getOnOffNoty() {
		return onOffNoty;
	}

	public void setOnOffNoty(String onOffNoty) {
		this.onOffNoty = onOffNoty;
	}

	public String getUserLoginType() {
		return userLoginType;
	}

	public void setUserLoginType(String userLoginType) {
		this.userLoginType = userLoginType;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	@Override
	public String toString() {
		return "UserDto [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", completedChallenge="
				+ completedChallenge + ", onOffNoty=" + onOffNoty + ", userLoginType=" + userLoginType + ", userPhone="
				+ userPhone + ", userBirth=" + userBirth + "]";
	}

}

package com.gld.model.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import com.gld.model.repository.RegisteredMemberRepository;

@Entity
@Table(name = "G_USER")
public class UserDto {

	@Id
	@Column(name = "ID",nullable = false, unique = true)
    private Long id;

	// table join (G_USER 일대다 REGISTERED_MEMBER)
	@OneToMany(mappedBy = "userDto", fetch = FetchType.LAZY)
	private List<RegisteredMemberDto> list = new ArrayList<>();
	//

	@Column(name = "USER_ID", nullable = false, unique = true)
	private String userId;

	@Column(name = "USER_PW", nullable = false)
	private String userPw;

	@Column(name = "USER_NAME", nullable = false)
	private String userName;

	@Column(name = "COMPLETED_CHALLENGE", nullable = false)
	private int completedChallenge;

	@Column(name = "ONOFF_NOTY", nullable = false)
	private String onOffNoty;

	@Column(name = "USER_LOGINTYPE", nullable = false)
	private String userLoginType;

	@Column(name = "USER_PHONE", nullable = false)
	private String userPhone;

	@Column(name = "USER_BIRTH", nullable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date userBirth;

	public UserDto() {
		super();
	}

	public UserDto(Long id, String userId, String userPw, String userName, int completedChallenge, String onOffNoty,
			String userLoginType, String userPhone, Date userBirth) {
		super();
		this.id = id;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.completedChallenge = completedChallenge;
		this.onOffNoty = onOffNoty;
		this.userLoginType = userLoginType;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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


	/////////////////////
	// join table 관련
	public List<RegisteredMemberDto> getList() {
		return list;
	}

	public void setList(List<RegisteredMemberDto> list) {
		this.list = list;
	}

}
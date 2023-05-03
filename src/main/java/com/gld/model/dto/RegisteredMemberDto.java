package com.gld.model.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="REGISTERED_MEMBER")
@IdClass(RegisteredMemberDtoPK.class)
public class RegisteredMemberDto {
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

	@Id
	@Column(name = "SEQ",nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long seq;
	
	//table join (G_USER 일대다 REGISTERED_MEMBER)
	@ManyToOne
	@JoinColumn(name="ID", insertable=false, updatable=false)
	private UserDto userDto;
	
	//table join (G_CHALLENGE 일대다 REGISTERED_MEMBER)
	@ManyToOne
	@JoinColumn(name="SEQ", insertable=false, updatable=false)
	private ChallengeDto challengeDto;
	
	

	//table join 관련
	public RegisteredMemberDto() {
		super();
	}
	public RegisteredMemberDto(Long id, Long seq) {
		super();
		Id = id;
		this.seq = seq;
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public Long getSeq() {
		return seq;
	}
	public void setSeq(Long seq) {
		this.seq = seq;
	}
	public UserDto getUserDto() {
		return userDto;
	}
	public void setUserDto(UserDto userDto) {
		this.userDto = userDto;
	}
	public ChallengeDto getChallengeDto() {
		return challengeDto;
	}
	public void setChallengeDto(ChallengeDto challengeDto) {
		this.challengeDto = challengeDto;
	}
	
	
}

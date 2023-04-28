package com.gld.model.dto;

public class ChellangeDto {
	private int seq;
	private String challengeName;
	private String challengeInfo;
	private int challengeMaxMember;
	private int challengeDuration;
	private String challengeEnabled;
	private String challengeCategory;
	private String challengeHashtag;

	public ChellangeDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChellangeDto(int seq, String challengeName, String challengeInfo, int challengeMaxMember,
			int challengeDuration, String challengeEnabled, String challengeCategory, String challengeHashtag) {
		super();
		this.seq = seq;
		this.challengeName = challengeName;
		this.challengeInfo = challengeInfo;
		this.challengeMaxMember = challengeMaxMember;
		this.challengeDuration = challengeDuration;
		this.challengeEnabled = challengeEnabled;
		this.challengeCategory = challengeCategory;
		this.challengeHashtag = challengeHashtag;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getChallengeName() {
		return challengeName;
	}

	public void setChallengeName(String challengeName) {
		this.challengeName = challengeName;
	}

	public String getChallengeInfo() {
		return challengeInfo;
	}

	public void setChallengeInfo(String challengeInfo) {
		this.challengeInfo = challengeInfo;
	}

	public int getChallengeMaxMember() {
		return challengeMaxMember;
	}

	public void setChallengeMaxMember(int challengeMaxMember) {
		this.challengeMaxMember = challengeMaxMember;
	}

	public int getChallengeDuration() {
		return challengeDuration;
	}

	public void setChallengeDuration(int challengeDuration) {
		this.challengeDuration = challengeDuration;
	}

	public String getChallengeEnabled() {
		return challengeEnabled;
	}

	public void setChallengeEnabled(String challengeEnabled) {
		this.challengeEnabled = challengeEnabled;
	}

	public String getChallengeCategory() {
		return challengeCategory;
	}

	public void setChallengeCategory(String challengeCategory) {
		this.challengeCategory = challengeCategory;
	}

	public String getChallengeHashtag() {
		return challengeHashtag;
	}

	public void setChallengeHashtag(String challengeHashtag) {
		this.challengeHashtag = challengeHashtag;
	}

	@Override
	public String toString() {
		return "ChellangeDto [seq=" + seq + ", challengeName=" + challengeName + ", challengeInfo=" + challengeInfo
				+ ", challengeMaxMember=" + challengeMaxMember + ", challengeDuration=" + challengeDuration
				+ ", challengeEnabled=" + challengeEnabled + ", challengeCategory=" + challengeCategory
				+ ", challengeHashtag=" + challengeHashtag + "]";
	}

}

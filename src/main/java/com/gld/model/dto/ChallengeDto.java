package com.gld.model.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PostLoad;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.DynamicInsert;
import org.springframework.data.domain.Persistable;

@Entity
@Table(name="G_CHALLENGE")
@DynamicInsert
public class ChallengeDto implements Persistable<Long> {
   
   @Id
    @Column(name = "SEQ",nullable = false)
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long seq;
    
   @Column(name = "CHALLENGE_NAME", nullable = false)
   private String challengeName;
    
   @Column(name = "CHALLENGE_INFO", nullable = false)
   private String challengeInfo;
    
   @Column(name = "CHALLENGE_MAXMEMBER", nullable = false)
   private int challengeMaxMember;
    
   @Column(name = "CHALLENGE_DURATION", nullable = false)
   private int challengeDuration;

    @Column(name = "CHALLENGE_ENABLED")
   private String challengeEnabled;
    
    @Column(name = "CHALLENGE_CATEGORY", nullable = false)
   private String challengeCategory;
    
    @Column(name = "CHALLENGE_HASHTAG")
   private String challengeHashtag;

   public ChallengeDto() {
      super();
   }

   public ChallengeDto(Long seq, String challengeName, String challengeInfo, int challengeMaxMember,
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

   public Long getSeq() {
      return seq;
   }

   public void setSeq(Long seq) {
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

   @Override
   public Long getId() {
      return this.seq;
   }

   @Transient
   private boolean isNew = true;
   
   @Override
   public boolean isNew() {
      return isNew;
   }
   
   @PrePersist
   @PostLoad
   void markNotNew() {
      this.isNew = false;
   }
   
   

}
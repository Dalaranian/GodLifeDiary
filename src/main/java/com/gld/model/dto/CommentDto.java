package com.gld.model.dto;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name="G_COMMENT")
@IdClass(CommentId.class)
public class CommentDto {
	@Id
	@Column(name="SEQ")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long seq;
	
	@Id
	@Column(name="ID")
	private Integer id;
	
	@Id
	@Column(name="COMMENT_DATE")
	private LocalDate commentDate;
	
	@Column(name="COMMENT")
	private String comment;
	
	@Column(name="ISDONE")
	private String isDone;
	
	// table join (G_USER 일대다 G_COMMENT)
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ID", insertable = false, updatable = false)
	private UserDto userDto;
	
	public CommentDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserDto getUserDto() {
		return userDto;
	}

	public void setUserDto(UserDto userDto) {
		this.userDto = userDto;
	}

	public CommentDto(Long seq, Integer id, LocalDate commentDate, String comment, String isDone) {
		super();
		this.seq = seq;
		this.id = id;
		this.commentDate = commentDate;
		this.comment = comment;
		this.isDone = isDone;
	}

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public LocalDate getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(LocalDate commentDate) {
		this.commentDate = commentDate;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getIsDone() {
		return isDone;
	}

	public void setIsDone(String isDone) {
		this.isDone = isDone;
	}

	@Override
	public String toString() {
		return "CommentDto [seq=" + seq + ", id=" + id + ", commentDate=" + commentDate + ", comment=" + comment
				+ ", isDone=" + isDone + ", userDto=" + userDto + "]";
	}


	
	
	
}
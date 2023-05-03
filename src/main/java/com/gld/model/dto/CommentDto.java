package com.gld.model.dto;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity(name="G_COMMENT")
@IdClass(CommentId.class)
public class CommentDto {
	@Id
	@Column(name="SEQ")
	private Integer seq;
	
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

	public CommentDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentDto(Integer seq, Integer id, LocalDate commentDate, String comment, String isDone) {
		super();
		this.seq = seq;
		this.id = id;
		this.commentDate = commentDate;
		this.comment = comment;
		this.isDone = isDone;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
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

	
	
	
	
}

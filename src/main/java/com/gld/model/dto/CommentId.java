package com.gld.model.dto;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;

public class CommentId implements Serializable{
	@Column(name="SEQ")
	private Long seq;
	@Column(name="ID")
	private Integer id;
	@Column(name="COMMENT_DATE")
	private LocalDate commentDate;
	public CommentId() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentId(Long seq, Integer id, LocalDate commentDate) {
		super();
		this.seq = seq;
		this.id = id;
		this.commentDate = commentDate;
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
	
	
}
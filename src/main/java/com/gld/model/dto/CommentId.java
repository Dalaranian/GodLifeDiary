package com.gld.model.dto;

import java.io.Serializable;
import java.time.LocalDate;

public class CommentId implements Serializable{
	private Integer seq;
	private Integer id;
	private LocalDate commentDate;
	public CommentId() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentId(Integer seq, Integer id, LocalDate commentDate) {
		super();
		this.seq = seq;
		this.id = id;
		this.commentDate = commentDate;
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
	
	
}

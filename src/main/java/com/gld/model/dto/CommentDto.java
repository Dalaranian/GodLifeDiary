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

@Entity(name="G_COMMENT")
@IdClass(CommentId.class)
public class CommentDto {
	@Id
	@Column(name="SEQ")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	
	//private UserDto userDto;
	
	
	// table join (G_USER 일대다 REGISTERED_MEMBER)
//	@OneToMany(mappedBy = "commentDto", fetch = FetchType.LAZY)
//	private List<UserDto> list = new ArrayList<>();
	
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

//	public List<UserDto> getList() {
//		return list;
//	}
//
//	public void setList(List<UserDto> list) {
//		this.list = list;
//	}
	
	
	
}
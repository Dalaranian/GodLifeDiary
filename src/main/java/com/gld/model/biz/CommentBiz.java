package com.gld.model.biz;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.dto.CommentDto;
import com.gld.model.repository.CommentRepository;

@Service
public class CommentBiz {
	@Autowired
	private CommentRepository commentRepository;
	
	public CommentDto selectComment(Integer seq, Integer id, LocalDate commentDate) {
		return commentRepository.findOneBySeqAndIdAndCommentDate(seq, id, commentDate);
	}
	
	public List<CommentDto> selectComments(Integer seq, LocalDate commentDate) {
		return commentRepository.findBySeqAndCommentDate(seq, commentDate);
	}
}

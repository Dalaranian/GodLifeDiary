package com.gld.model.biz;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.CommentDto;
import com.gld.model.dto.RegisteredMemberDto;
import com.gld.model.repository.CommentRepository;
import com.gld.model.repository.RegisteredMemberRepository;

@Service
public class CommentBiz {
	@Autowired
	private CommentRepository commentRepository;
	
	public CommentDto selectComment(Long seq, Integer id, LocalDate commentDate) {
		return commentRepository.findOneBySeqAndIdAndCommentDate(seq, id, commentDate);
	}
	
	public List<CommentDto> selectComments(Long seq, LocalDate commentDate) {
		return commentRepository.findBySeqAndCommentDate(seq, commentDate);
	}
	
		
	public List<CommentDto> selectAll() {

			return commentRepository.findAll();
	}
	public void insert(CommentDto dto) {

		commentRepository.save(dto);
	}
}
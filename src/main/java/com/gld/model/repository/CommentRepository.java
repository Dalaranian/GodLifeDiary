package com.gld.model.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.CommentDto;
import com.gld.model.dto.CommentId;

@Repository
public interface CommentRepository extends JpaRepository<CommentDto,CommentId>{
	CommentDto findOneBySeqAndIdAndCommentDate(Integer seq, Integer id, LocalDate commentDate);
	List<CommentDto> findBySeqAndCommentDate(Integer seq, LocalDate commentDate);
}

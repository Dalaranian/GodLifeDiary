package com.gld.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.UserDto;

@Repository
public interface ChallengeRepository extends JpaRepository<ChallengeDto, Long> {
	List<ChallengeDto> findAll();

	ChallengeDto findByChallengeName(String challengeName);

	List<ChallengeDto> findByChallengeCategory(String challengeCategory);

	ChallengeDto findBySeq(Long seq);

}
package com.gld.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gld.model.dto.ChallengeDto;

@Repository
public interface ChallengeRepository extends JpaRepository<ChallengeDto, Long> {
	List<ChallengeDto> findAll();
}
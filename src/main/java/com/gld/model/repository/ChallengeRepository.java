package com.gld.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gld.model.dto.ChallengeDto;

@Repository
public interface ChallengeRepository extends JpaRepository<ChallengeDto, Long> {
   
}
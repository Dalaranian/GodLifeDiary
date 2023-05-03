package com.gld.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gld.model.dto.ChallengeDto;
import com.gld.model.repository.ChallengeRepository;

@Service
@Transactional
public class ChallengeBiz {
   
   @Autowired
   private ChallengeRepository challengeRepository;
   
   public void insert(ChallengeDto dto) {
      
      challengeRepository.save(dto);
   }
   
   public List<ChallengeDto> selectAll() {
       
       return challengeRepository.findAll();
   }
   
   public ChallengeDto selectOne(String ChallengeName) {
      return challengeRepository.findByChallengeName(ChallengeName);
   }
   
   public List<ChallengeDto> findbyCate(String ChallengeCategory) {
       return challengeRepository.findByChallengeCategory(ChallengeCategory);
   }


}
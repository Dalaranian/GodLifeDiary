package com.gld.model.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface RegisteredMemberMapper {
	
	// REGISTER_MEMBER 테이블의 해당 첼린지의 인원이 몇명인지 리턴하는 매퍼
	@Select(" SELECT COUNT(*) as cnt FROM REGISTERED_MEMBER WHERE SEQ = #{seq}; ")
	int countBySeq(String seq);
	
	// REGISTER_MEMBER 테이블에 유저 ID, SEQ 의 튜플을 저장하는 매퍼
	@Insert(" INSERT INTO REGISTERED_MEMBER (ID, SEQ) VALUES (#{id}, #{challengeSeq}); ")
	int insertRegister(String challengeSeq, Long id);

	// CHALLENGE 의 MAX 맴버가 찼을 떄, 챌린지를 시작하는 매퍼
	@Update(" UPDATE G_CHALLENGE SET CHALLENGE_STARTED_DATE = NOW() WHERE SEQ = #{challengeSeq };")
	void challengeStart(String challengeSeq);
	
	@Delete(" DELETE FROM REGISTERED_MEMBER WHERE  ID=#{id} AND SEQ= #{challengeSeq}; ")
	int deleteRegister(String challengeSeq, Long id);
	
}

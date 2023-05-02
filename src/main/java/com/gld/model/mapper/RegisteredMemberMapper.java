package com.gld.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface RegisteredMemberMapper {
	
	@Select(" SELECT COUNT(*) as cnt FROM REGISTERED_MEMBER WHERE SEQ = #{seq}; ")
	int countBySeq(String seq);
	
	@Insert(" INSERT INTO REGISTERED_MEMBER (ID, SEQ) VALUES (#{id}, #{challengeSeq}); ")
	int insertRegister(String challengeSeq, Long id);

}

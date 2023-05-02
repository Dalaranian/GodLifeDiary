package com.gld.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface RegisteredMemberMapper {
	
	@Select(" SELECT COUNT(*) as cnt FROM REGISTERED_MEMBER WHERE SEQ = #{seq}; ")
	int countBySeq(String seq);

}

package com.gld.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UserMapper {

	@Update("UPDATE G_USER SET USER_PW = #{userPw} WHERE ID = #{id}; ")
	int updatePw(Long id, String userPw);
}

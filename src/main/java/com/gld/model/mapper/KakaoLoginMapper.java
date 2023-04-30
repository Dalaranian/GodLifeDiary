package com.gld.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.gld.model.dto.UserDto;

@Mapper
public interface KakaoLoginMapper {
	
	@Insert(" IN")
	int insertKakao(UserDto dto);

}

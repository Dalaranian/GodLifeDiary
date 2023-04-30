package com.gld.model.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.gld.model.dto.UserDto;

@Mapper
public interface KakaoLoginMapper {

	@Insert(" INSERT INTO G_USER VALUES(NULL, #{userId}, #{userPw}, #{userName}, 0, #{onOffNoty}, #{userLoginType}, #{userPhone}, #{userBirth}) ")
	int insertUser(UserDto dto);

}

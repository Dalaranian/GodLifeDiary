package com.gld.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.dto.UserDto;
import com.gld.model.mapper.KakaoLoginMapper;

@Service
public class KakaoLoginBiz {
	
	@Autowired
	private KakaoLoginMapper kakao;

	public int insert(UserDto dto) {
		return kakao.insertUser(dto);
	}

}

package com.gld.model.biz;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.dto.UserDto;
import com.gld.model.mapper.UserMapper;
import com.gld.model.repository.UserRepository;

@Service
@Transactional
public class LoginBiz {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserMapper usermapper;
	
	public UserDto findByUserId(String userId) {

		UserDto user = userRepository.findByUserId(userId);

		return user;
	}

	public void insert(UserDto dto) {

		userRepository.save(dto);
	}

	public int changePw(UserDto user, String userPw) {
		return usermapper.updatePw(user.getId(), userPw);
	}
	
}
package com.gld.model.biz;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.dto.UserDto;
import com.gld.model.repository.UserRepository;

@Service
public class LoginBiz {

	@Autowired
    private UserRepository userRepository;
	
	
	public UserDto findByUserId(String userId) {
		
		UserDto user = userRepository.findByUserId(userId);
		
		return user;
	}

}

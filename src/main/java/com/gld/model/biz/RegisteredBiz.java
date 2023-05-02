package com.gld.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gld.model.mapper.RegisteredMemberMapper;

@Service
public class RegisteredBiz {
	@Autowired
	private RegisteredMemberMapper mapper;
	
	public int coutBySeq(String seq) {
		return mapper.countBySeq(seq);
	}
}

package com.gld.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gld.model.mapper.RegisteredMemberMapper;

@Service
public class RegisteredBiz {
	@Autowired
	private RegisteredMemberMapper mapper;
	
	public int coutBySeq(String seq) {
		return mapper.countBySeq(seq);
	}

//	@Transactional
//	public int insert(String challengeSeq, Long id) {
//		// TODO Auto-generated method stub
//		return mapper.insertRegister(challengeSeq, id);
//	}
	
	public int insert(String challengeSeq, Long id) {
		// TODO Auto-generated method stub
		int res = mapper.insertRegister(challengeSeq, id);
		System.out.println("biz insert res: " + res);
		return res;
	}

	public void challengeStart(String challengeSeq) {
		// TODO Auto-generated method stub
		mapper.challengeStart(challengeSeq);
	}
}

package com.gld.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gld.model.dto.RegisteredMemberDto;
import com.gld.model.dto.RegisteredMemberDtoPK;

public interface RegisteredMemberRepository extends JpaRepository<RegisteredMemberDto, RegisteredMemberDtoPK> {
	List<RegisteredMemberDto> findAll();

}

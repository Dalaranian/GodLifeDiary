package com.gld.model.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gld.model.dto.UserDto;


@Repository
public interface UserRepository extends JpaRepository<UserDto, Long> {

	UserDto findByUserId(String userId);
}


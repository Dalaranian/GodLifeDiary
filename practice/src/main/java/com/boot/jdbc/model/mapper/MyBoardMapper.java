package com.boot.jdbc.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.boot.jdbc.model.dto.MyDto;

@Mapper
public interface MyBoardMapper {
	
	@Select(" SELECT * FROM MYBOARD ORDER BY MYNO DESC ")
	List<MyDto> selectList();
	
	@Insert(" INSERT INTO MYBOARD VALUES(NULL, #{myname}, #{mytitle}, #{mycontent}, NOW()) ")
	int insert(MyDto dto);

	@Select(" SELECT * FROM MYBOARD WHERE MYNO=#{myno}")
	MyDto selectOne(int myno);
	
	@Update(" UPDATE MYBOARD SET MYTITLE=#{mytitle}, MYCONTENT=#{mycontent} WHERE MYNO=#{myno} ")
	int update(MyDto dto);
	
	@Delete(" DELETE FROM MYBOARD WHERE MYNO=#{myno} ")
	int delete(int myno);
	
}

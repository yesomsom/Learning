package com.proTest.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.proTest.member.vo.TestVO;



@Mapper
@Repository("testDAO")
public interface TestDAO {
	public List listTests() throws DataAccessException;

	public int insertMember(TestVO testVO) throws DataAccessException;

	public int deleteMember(String id) throws DataAccessException;

	public TestVO loginById(TestVO testVO) throws DataAccessException;

}
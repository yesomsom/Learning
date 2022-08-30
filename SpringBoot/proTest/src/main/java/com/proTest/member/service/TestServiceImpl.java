package com.proTest.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.proTest.member.dao.TestDAO;
import com.proTest.member.vo.TestVO;

@Service("testService")
@Transactional(propagation = Propagation.REQUIRED)
public class TestServiceImpl implements TestService {
	@Autowired
	private TestDAO testDAO;

	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = testDAO.listTests();
		return membersList;
	}

	@Override
	public int addMember(TestVO test) throws DataAccessException {
		return testDAO.insertMember(test);
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
		return testDAO.deleteMember(id);
	}

	@Override
	public TestVO login(TestVO testVO) throws Exception {
		return testDAO.loginById(testVO);
	}

}

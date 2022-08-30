package com.proTest.member.service;

import java.util.List;

import com.proTest.member.vo.TestVO;

public interface TestService {
	public List listMembers() throws Exception;

	public int addMember(TestVO memberVO) throws Exception;

	public int removeMember(String id) throws Exception;

	public TestVO login(TestVO memberVO) throws Exception;
}

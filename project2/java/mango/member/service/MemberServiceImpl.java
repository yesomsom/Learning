package mango.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.member.memberdao.MemberDAO;

@Service("memberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;

	@Override
	public List<MemberVO> selectAllMemberList(MemberVO memberVO) throws Exception {
		return memberDAO.selectAllMemberList(memberVO);
	}

	@Override
	public void insertMember(MemberVO memberVO) throws Exception {
		memberDAO.insertMember(memberVO);
	}

	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		return memberDAO.login(memberVO);
	}

	@Override
	public List<MemberVO> idFind(MemberVO memberVO) throws Exception {
		return memberDAO.idFind(memberVO);
	}

	@Override
	public int id_find_check(MemberVO memberVO) throws Exception {
		return memberDAO.id_find_check(memberVO);
	}

}
package mango.member.memberdao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.member.service.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends ComAbstractDAO {
	public List<MemberVO> selectAllMemberList(MemberVO memberVO) throws Exception {
		return selectList("MemberMapper.selectAllMemberList", memberVO);
	}

	public void insertMember(MemberVO memberVO) throws Exception {
		insert("MemberMapper.insertMember", memberVO);
	}

	public MemberVO login(MemberVO memberVO) throws Exception {
		return selectOne("MemberMapper.login", memberVO);
	}

	// 아이디 찾기
	public List<MemberVO> idFind(MemberVO memberVO) throws Exception {
		return selectOne("idFindeMapper.id_find", memberVO);
	}

	// 아이디 찾기 유효성검사
	public int id_find_check(MemberVO memberVO) throws Exception {
		return selectOne("idFindeMapper.id_find_Check", memberVO);
	}

}
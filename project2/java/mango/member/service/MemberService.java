package mango.member.service;

import java.util.List;

public interface MemberService {
   
   List<MemberVO> selectAllMemberList(MemberVO memberVO) throws Exception;   
   void insertMember(MemberVO memberVO) throws Exception;
   //로그인
   MemberVO login(MemberVO memberVO) throws Exception;
   // id 찾기
   public List<MemberVO> idFind(MemberVO memberVO) throws Exception;

   // 유효성검사
   public int id_find_check(MemberVO memberVO) throws Exception;
   
}
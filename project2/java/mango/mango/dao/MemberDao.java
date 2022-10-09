package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.MemberDto;

@Repository("MemberDAO")
public class MemberDao extends ComAbstractDAO{
   
   // 기본 설정 - dao
   public String getId(String id) throws Exception{
      return selectOne("Member.getId", id);
   }   
   
   public int register(MemberDto dto) throws Exception{
      return insert("Member.register", dto);
   }
      
   public MemberDto login(MemberDto dto) throws Exception{
      return selectOne("Member.login", dto);
   }
}
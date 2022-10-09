package mango.mango.service;

import mango.mango.model.MemberDto;

public interface MemberService {
   public String getId(String id) throws Exception;   
   public int register(MemberDto dto) throws Exception;
   public MemberDto login(MemberDto dto) throws Exception;
}
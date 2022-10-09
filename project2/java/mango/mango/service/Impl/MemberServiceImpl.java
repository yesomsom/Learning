package mango.mango.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.MemberDao;
import mango.mango.model.MemberDto;
import mango.mango.service.MemberService;

@Service("MemberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

   @Resource(name = "MemberDAO")
   private MemberDao MemberDao;

   @Override
   public String getId(String id) throws Exception {
      return MemberDao.getId(id);
   }
   @Override
   public int register(MemberDto dto) throws Exception {

      return MemberDao.register(dto);
   }

   @Override
   public MemberDto login(MemberDto dto) throws Exception {

      return MemberDao.login(dto);
   }

}
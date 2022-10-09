package mango.mango.service.Impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.ReserveDao;
import mango.mango.model.ReserveDto;
import mango.mango.service.ReserveService;

@Service("ReserveService")
public class ReserveServiceImpl extends EgovAbstractServiceImpl implements ReserveService {

   @Resource(name = "ReserveDAO")
   private ReserveDao ReserveDao;

   @Override
   public int Reserve(ReserveDto dto) throws Exception {

      return ReserveDao.Reserve(dto);
   }

   @Override
   public List<ReserveDto> getReserve(ReserveDto dto) throws Exception {
      System.out.println("");
      List<ReserveDto> list = new ArrayList<ReserveDto>();
      list = ReserveDao.getReserveList(dto);
   
      return list;
   }

   @Override
   public List<ReserveDto> selectMapping(ReserveDto dto) throws Exception{
      
      return ReserveDao.selectMapping(dto);
   }

}
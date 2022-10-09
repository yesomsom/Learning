package mango.mango.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.PayDao;
import mango.mango.model.PayDto;
import mango.mango.service.PayService;

@Service("PayService")
public class PayServiceImpl extends EgovAbstractServiceImpl implements PayService {

   @Resource(name="PayDAO")
   private PayDao PayDao;
   

   @Override
   public int payTicket(PayDto dto) throws Exception{
      
      return PayDao.payTicket(dto);
   }
   
   

}
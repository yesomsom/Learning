package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.PayDto;
@Repository("PayDAO")
public class PayDao extends ComAbstractDAO{

   public int payTicket(PayDto dto) throws Exception{
      return insert("Pay.Pay",dto);
   }
}
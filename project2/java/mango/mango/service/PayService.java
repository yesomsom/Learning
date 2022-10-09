package mango.mango.service;

import mango.mango.model.PayDto;

public interface PayService {
   public int payTicket(PayDto dto) throws Exception;
}
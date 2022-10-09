package mango.mango.service;

import java.util.List;

import mango.mango.model.ReserveDto;

public interface ReserveService {
   public int Reserve(ReserveDto dto) throws Exception;

   public List<ReserveDto> getReserve(ReserveDto dto) throws Exception;
   
   public List<ReserveDto> selectMapping(ReserveDto dto) throws Exception;
}
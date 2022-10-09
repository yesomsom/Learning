package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.ReserveDto;

@Repository("ReserveDAO")
public class ReserveDao extends ComAbstractDAO {

   public int Reserve(ReserveDto dto) throws Exception {
      return insert("Reserve.Reserve", dto);
   }

   public List<ReserveDto> getReserveList(ReserveDto dto) throws Exception {
      return selectList("Reserve.getReserveList", dto);
   }

   public List<ReserveDto> selectMapping(ReserveDto dto) throws Exception {
      return selectList("Reserve.selectMapping", dto);
   }
}
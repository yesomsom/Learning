package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.CartVO;

@Repository("CartDAO")
public class CartDao extends ComAbstractDAO {
   public List<CartVO> selectAllCartList(CartVO vo) throws Exception {
      return selectList("cartMapper.selectAllCartList", vo);
   }
   
   public int modifyCount(CartVO vo) throws Exception {
      return update("cartMapper.modifyCount", vo);
   }
}
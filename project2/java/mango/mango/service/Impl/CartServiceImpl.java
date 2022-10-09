package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.CartDao;
import mango.mango.model.CartVO;
import mango.mango.service.CartService;

@Service("CartService")
public class CartServiceImpl extends EgovAbstractServiceImpl implements CartService {

   @Resource(name="CartDAO")
   private CartDao cartDao;

   @Override
   public List<CartVO> selectAllCartList(CartVO vo) throws Exception {
      return cartDao.selectAllCartList(vo);
   }

   @Override
   public int modifyCount(CartVO vo) throws Exception {
      return cartDao.modifyCount(vo);
   }
   
   
}
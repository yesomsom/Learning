package mango.mango.service;

import java.util.List;

import mango.mango.model.CartVO;

public interface CartService {
   List<CartVO> selectAllCartList(CartVO vo) throws Exception;
   int modifyCount(CartVO vo) throws Exception;
}
package mango.mango.service;

import java.util.List;

import mango.mango.model.OrdersVO;

public interface OrdersService {
	List<OrdersVO> selectAllOrdersList(OrdersVO vo) throws Exception;
}

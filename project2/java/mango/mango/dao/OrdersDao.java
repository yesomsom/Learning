package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.OrdersVO;

@Repository("OrdersDAO")
public class OrdersDao extends ComAbstractDAO {
	public List<OrdersVO> selectAllOrdersList(OrdersVO vo) throws Exception {
		return selectList("ordersMapper.selectAllOrdersList", vo);
	}
}

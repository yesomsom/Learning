package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.OrdersDao;
import mango.mango.model.OrdersVO;
import mango.mango.service.OrdersService;

@Service("OrdersService")
public class OrdersServiceImpl extends EgovAbstractServiceImpl implements OrdersService {
	@Resource(name = "OrdersDAO")
	private OrdersDao ordersDao;

	@Override
	public List<OrdersVO> selectAllOrdersList(OrdersVO vo) throws Exception {
		return ordersDao.selectAllOrdersList(vo);
	}
}

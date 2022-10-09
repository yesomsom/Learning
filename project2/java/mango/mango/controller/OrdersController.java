package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.OrdersVO;
import mango.mango.service.OrdersService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class OrdersController {
	@Resource(name = "OrdersService")
	private OrdersService ordersService;
	
	@RequestMapping(value = "/orders")
	public String orders(ModelMap model, Criteria cri) throws Exception {
		OrdersVO ordersVO = new OrdersVO();
		List<OrdersVO> orderList = ordersService.selectAllOrdersList(ordersVO);
		model.addAttribute("orderList", orderList);
		
		return "user/page/orders";
	}
}

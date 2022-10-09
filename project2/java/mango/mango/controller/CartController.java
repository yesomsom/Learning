package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.CartVO;
import mango.mango.service.CartService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class CartController {
   @Resource(name = "CartService")
   private CartService cartService;
   
   @RequestMapping(value = "/cart")
   public String cart(ModelMap model, Criteria cri) throws Exception {
      
      CartVO cartVO = new CartVO();
      List<CartVO> cartList = cartService.selectAllCartList(cartVO);
      model.addAttribute("cartList", cartList);
      
      return "user/page/cart";
   }
   
   @RequestMapping(value = "/cart/update")
   public String updateCart(ModelMap model, Criteria cri, CartVO cartVO) throws Exception {
      cartService.modifyCount(cartVO);
      
      List<CartVO> cartList = cartService.selectAllCartList(cartVO);
      model.addAttribute("cartList", cartList);
      return "user/page/cart";
   }
}
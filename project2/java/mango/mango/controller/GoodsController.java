package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mango.board.service.BoardVO;
import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.UserURLValue;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class GoodsController {
   @Resource(name = "GoodsService")
   private GoodsService goodsService;
   
   @RequestMapping(value = "/goods")
   public String goods(ModelMap model, Criteria cri, @RequestParam(value="pageNumCri", required = false) String pageNumCri) throws Exception {
	   
	   GoodsVO goodsVO = new GoodsVO();
	   
	   int goodsTotal = goodsService.selectAllGoodsCount(goodsVO);
	   // 페이징
	   PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
	   if(pageNumCri == null) {
		   pageNumCri = "1";
	   }
	   goodsVO.setSkip((Integer.parseInt(pageNumCri) - 1 ) * cri.getAmount());
	   goodsVO.setAmount(cri.getAmount());
		
		
      List<GoodsVO> goodsList = goodsService.selectAllGoodsList(goodsVO);
      model.addAttribute("goodsList", goodsList);
      model.put("pageMaker", pageMaker);
      return "user/page/goods";
   }
   
   @RequestMapping(value = "/goodsDetail")
   public String goodsDetail(ModelMap model, Criteria cri, int goodsId) throws Exception {
	   GoodsVO goods = goodsService.selectGoodsDetailList(goodsId);
	   model.addAttribute("goods", goods);
	   return "user/page/goodsDetail";
   }
	/*
	 * @RequestMapping(value = "/goodsDetail/insert") public String
	 * insertgoodsDetail(ModelMap model, Criteria cri, GoodsVO vo) throws Exception
	 * { goodsService.;
	 * 
	 * return "user/page/cart"; }
	 */	   
}
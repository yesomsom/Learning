package mango.mango.service;

import java.util.List;

import mango.mango.model.GoodsVO;

public interface GoodsService {
	List<GoodsVO> selectAllGoodsList(GoodsVO vo) throws Exception;

	Integer selectAllGoodsCount(GoodsVO vo) throws Exception;

	public GoodsVO selectGoodsDetailList(int goodsId) throws Exception;
}
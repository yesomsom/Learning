package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.GoodsVO;

@Repository("GoodsDAO")
public class GoodsDao extends ComAbstractDAO {
	public List<GoodsVO> selectAllGoodsList(GoodsVO vo) throws Exception {
		return selectList("goodsMapper.selectAllGoodsList", vo);
	}
	
	public Integer selectAllGoodsCount(GoodsVO vo) throws Exception{
		return selectOne("goodsMapper.selectAllGoodsCount", vo);
	}
	
	public GoodsVO selectGoodsDetailList(int goodsId) {
		return selectOne("goodsMapper.selectGoodsDetailList",goodsId);
	}
}
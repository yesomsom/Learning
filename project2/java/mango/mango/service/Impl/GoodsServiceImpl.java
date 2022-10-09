package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.GoodsDao;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;

@Service("GoodsService")
public class GoodsServiceImpl extends EgovAbstractServiceImpl implements GoodsService {
	@Resource(name = "GoodsDAO")
	private GoodsDao goodsDao;

	@Override
	public List<GoodsVO> selectAllGoodsList(GoodsVO vo) throws Exception {
		return goodsDao.selectAllGoodsList(vo);
	}
	
	@Override
	public Integer selectAllGoodsCount(GoodsVO vo) throws Exception{
		return goodsDao.selectAllGoodsCount(vo);
	}

	@Override
	public GoodsVO selectGoodsDetailList(int goodsId) throws Exception {
		return goodsDao.selectGoodsDetailList(goodsId);
	}

}
package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.TheaterDao;
import mango.mango.model.TheaterVO;
import mango.mango.service.TheaterService;

@Service("TheaterService")
public class TheaterServiceImpl extends EgovAbstractServiceImpl implements TheaterService{
   @Resource(name = "TheaterDAO")
   private TheaterDao theaterDao;

   @Override
   public List<TheaterVO> selectAllTheaterList(TheaterVO vo) throws Exception {
      return theaterDao.selectAllTheaterList(vo);
   }

   @Override
   public List<TheaterVO> selectCGVTheaterList(TheaterVO vo) throws Exception {
      return theaterDao.selectCGVTheaterList(vo);
   }

   @Override
   public List<TheaterVO> selectLotteTheaterList(TheaterVO vo) throws Exception {
      return theaterDao.selectAllTheaterList(vo);
   }

   @Override
   public List<TheaterVO> selectMegaTheaterList(TheaterVO vo) throws Exception {
      return theaterDao.selectMegaTheaterList(vo);
   }
   
   @Override
      public List<TheaterVO> selectCGVList(TheaterVO vo) throws Exception {      
         return theaterDao.selectCGVList(vo);
      }
}
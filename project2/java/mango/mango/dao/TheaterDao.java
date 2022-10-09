package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.TheaterVO;

@Repository("TheaterDAO")
public class TheaterDao extends ComAbstractDAO {
   public List<TheaterVO> selectAllTheaterList(TheaterVO vo) throws Exception {
      return selectList("Theater.selectAllTheaterList", vo);
   }
   
   public List<TheaterVO> selectCGVTheaterList(TheaterVO vo) throws Exception {
      return selectList("Theater.selectCGVTheaterList", vo);
   }
   public List<TheaterVO> selectLotteTheaterList(TheaterVO vo) throws Exception {
      return selectList("Theater.selectLotteTheaterList", vo);
   }
   public List<TheaterVO> selectMegaTheaterList(TheaterVO vo) throws Exception {
      return selectList("Theater.selectMegaTheaterList", vo);
   }
   public List<TheaterVO> selectCGVList(TheaterVO vo) throws Exception {
         return selectList("Theater.selectCGVList", vo);
      }
}
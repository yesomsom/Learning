package mango.mango.service;

import java.util.List;

import mango.mango.model.TheaterVO;

public interface TheaterService {
   List<TheaterVO> selectAllTheaterList(TheaterVO vo) throws Exception;
   
   List<TheaterVO> selectCGVTheaterList(TheaterVO vo) throws Exception;
   List<TheaterVO> selectLotteTheaterList(TheaterVO vo) throws Exception;
   List<TheaterVO> selectMegaTheaterList(TheaterVO vo) throws Exception;
   
   List<TheaterVO> selectCGVList(TheaterVO vo) throws Exception;
}
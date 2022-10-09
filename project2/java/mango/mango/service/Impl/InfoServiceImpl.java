package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.InfoDao;
import mango.mango.model.InfoDto;
import mango.mango.service.InfoService;

@Service("InfoService")
public class InfoServiceImpl extends EgovAbstractServiceImpl implements InfoService {
   
   @Resource(name = "InfoDAO")
   private InfoDao infoDao;
   
   @Override
   public void insertInfo(InfoDto dto) throws Exception{
      infoDao.insertInfo(dto);
   }

   @Override
   public List<InfoDto> selectTheaterListKo(InfoDto dto) throws Exception {
      return infoDao.selectTheaterListKo(dto);
   }
   
}
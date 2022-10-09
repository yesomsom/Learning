package mango.mango.service;

import java.util.List;

import mango.mango.model.InfoDto;

public interface InfoService {
   void insertInfo(InfoDto dto) throws Exception;
   List<InfoDto> selectTheaterListKo(InfoDto dto) throws Exception;
}
package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.InfoDto;

@Repository("InfoDAO")
public class InfoDao extends ComAbstractDAO {
	public void insertInfo(InfoDto dto) throws Exception {
		insert("InfoMapper.insertInfo", dto);
	}

	public List<InfoDto> selectTheaterListKo(InfoDto dto) throws Exception {
		return selectList("InfoMapper.selectTheaterListKo", dto);
	}
}
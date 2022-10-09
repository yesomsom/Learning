package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.NoticeDTO;

@Repository("noticeDAO")
public class NoticeDAO extends ComAbstractDAO {
	//공지 조회
		public List<NoticeDTO> selectAllNoticeList(NoticeDTO dto) throws Exception {
			return selectList("NoticeMapper.selectAllNoticeList", dto);
		}
		
		public Integer selectAllNoticeCount(NoticeDTO dto) throws Exception{
			return selectOne("NoticeMapper.selectAllNoticeCount", dto);
		}
		
		public NoticeDTO selectNoticeList(int noti_id) {
			return selectOne("NoticeMapper.selectNoticeList",noti_id);
		}
	
}

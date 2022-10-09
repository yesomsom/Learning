package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.NoticeDAO;
import mango.mango.model.NoticeDTO;
import mango.mango.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService {
	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	// 공지사항 리스트
	@Override
	public List<NoticeDTO> selectAllNoticeList(NoticeDTO dto) throws Exception {
		return noticeDAO.selectAllNoticeList(dto);
	} 

	@Override
	public Integer selectAllNoticeCount(NoticeDTO dto) throws Exception {
		return noticeDAO.selectAllNoticeCount(dto);
	}

	@Override
	public NoticeDTO selectNoticeList(int noti_id) throws Exception {
		return noticeDAO.selectNoticeList(noti_id);
	}
}

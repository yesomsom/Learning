package mango.mango.service;

import java.util.List;

import mango.mango.model.NoticeDTO;

public interface NoticeService {
	//공지사항 리스트	
	List<NoticeDTO> selectAllNoticeList(NoticeDTO dto) throws Exception;

	Integer selectAllNoticeCount(NoticeDTO dto) throws Exception;

	public NoticeDTO selectNoticeList(int noti_id) throws Exception;
}

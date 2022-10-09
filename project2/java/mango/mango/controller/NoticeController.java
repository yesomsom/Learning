package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.UserURLValue;
import mango.mango.model.NoticeDTO;
import mango.mango.service.NoticeService;

//공지사항
@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class NoticeController {
	@Resource(name = "noticeService")
	private NoticeService noticeService;

	// 공지사항 리스트
	@RequestMapping(value = "/noticeList")
	public String selectQaList(ModelMap model, Criteria cri,
			@RequestParam(value = "pageNumCri", required = false) String pageNumCri) throws Exception {
		NoticeDTO noticeDTO = new NoticeDTO();

		int noticeTotal = noticeService.selectAllNoticeCount(noticeDTO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, noticeTotal);
		if (pageNumCri == null) {
			pageNumCri = "1";
		}
		noticeDTO.setSkip((Integer.parseInt(pageNumCri) - 1) * cri.getAmount());
		noticeDTO.setAmount(cri.getAmount());

		List<NoticeDTO> notice = noticeService.selectAllNoticeList(noticeDTO);
		model.addAttribute("notice", notice);		
		model.put("pageMaker", pageMaker);		
		return "/user/page/noticeList";
	}

}

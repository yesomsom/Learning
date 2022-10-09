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
import mango.mango.model.QaVO;
import mango.mango.service.QaService;

//q&a
@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class QaController {
	@Resource(name = "qaService")
	private QaService qaService;
	
	//q&a 리스트
	@RequestMapping(value = "/qaList")
	public String selectQaList(ModelMap model, Criteria cri, @RequestParam(value="pageNumCri", required = false) String pageNumCri) throws Exception {
		QaVO qaVO = new QaVO();
		
		int qaListTotal = qaService.selectAllQaCount(qaVO);
		   // 페이징
		   PageMakerDTO pageMaker = new PageMakerDTO(cri, qaListTotal);
		   if(pageNumCri == null) {
			   pageNumCri = "1";
		   }
		   qaVO.setSkip((Integer.parseInt(pageNumCri) - 1 ) * cri.getAmount());
		   qaVO.setAmount(cri.getAmount());
			
			
	      List<QaVO> qaList = qaService.selectAllQaList(qaVO);
	      model.addAttribute("qaList", qaList);
	      model.put("pageMaker", pageMaker);
		
		return "/user/page/qaList";
	}

}

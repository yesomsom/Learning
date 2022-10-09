package mango.mango.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.AskDTO;
import mango.mango.service.AskService;

//1:1질문
@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class AskController {
		@Resource(name = "askService")
		private AskService askService;
	
	// 1:1문의하기
		@RequestMapping(value = "/askForm")
		public String askForm(ModelMap model, Criteria cri, AskDTO askDTO) throws Exception {
			return "/user/page/askForm";
		}
		@RequestMapping(value = "/askForm/insert", method = RequestMethod.POST )
		public String insertAskForm(ModelMap model, Criteria cri, AskDTO askDTO) throws Exception {						
			askService.insertAsk(askDTO);			
			return "/user/page/serviceCenter";
		}

}

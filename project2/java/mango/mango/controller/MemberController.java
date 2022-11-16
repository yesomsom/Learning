package mango.mango.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.MemberDto;
import mango.mango.service.MemberService;
import mango.member.service.MemberVO;
import mango.sms.Coolsms;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class MemberController {

	@Resource(name = "MemberService")
	private MemberService MemberService;

	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(ModelMap model, Criteria cri, MemberDto dto, HttpSession session) throws Exception {
		logger.info("register");

		return "/user/page/login";

	}

	@RequestMapping(value = "/login/insert", method = { RequestMethod.GET, RequestMethod.POST })
	public String insertLogin(ModelMap model, Criteria cri, MemberDto dto, HttpSession session) throws Exception {
		logger.info("register");
		MemberDto MemberDto = MemberService.login(dto);
		model.addAttribute("type", "login");

		if (MemberDto != null) {
			model.addAttribute("isSuccess", true);
			model.addAttribute("name", MemberDto.getName());
			session.setAttribute("login", MemberDto);
		} else {
			model.addAttribute("isSuccess", false);
			return "/user/page/process";
		}

		return "/user/page/process";

	}

	@RequestMapping(value = "/serviceCenter")
	public String serviceCenter(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/serviceCenter";
	}

	@RequestMapping(value = "/logout")
	public String logout(ModelMap model, Criteria cri, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		logger.info("logout");

		HttpSession session = request.getSession();
		session.invalidate();
		model.clear();
		return "redirect:/page/main.do";

	}

	@RequestMapping(value = "/register")
	public String register(ModelMap model, Criteria cri, MemberDto dto) throws Exception {
		logger.info("register");
		return "/user/page/register";
	}

	@RequestMapping(value = "/register/insert", method = RequestMethod.POST)
	public String registerinsert(ModelMap model, Criteria cri, MemberDto dto) throws Exception {
		MemberService.register(dto);
		MemberDto MemberDto = MemberService.login(dto);
		model.addAttribute("type", "register");

		if (MemberDto != null) {
			model.addAttribute("isSuccess", true);
		} else {
			model.addAttribute("isSuccess", false);
			return "/user/page/process";
		}
		return "/user/page/process";
	}

	@RequestMapping(value = "/jusoPopup")
	public String jusoPopup(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/jusoPopup";
	}
	
	@RequestMapping(value = "/sendSms")
	public String sendSms(ModelMap model, Criteria cri, MemberVO memberVO) throws Exception {
		return "/user/page/sendSms";
	}

	@RequestMapping(value = "/sendSms/insert", method = RequestMethod.POST)
	@ResponseBody
	public String insertsendSms(ModelMap model, Criteria cri, MemberVO memberVO, String to, String text)
			throws Exception {
		String api_key = "NCSRWVGXIDKFQHUO";
		String api_secret = "4RGHN4ANNLA8ZHQNLLT4SRAQVTQKGIKL";

		Coolsms coolsms = new Coolsms(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", to); // 수신번호
		set.put("from", "발신번호"); // 발신번호
		set.put("text", text); // 문자내용
		set.put("type", "sms"); // 문자 타입

		coolsms.send(set);

		return "/user/page/sendSms";
	}
	@RequestMapping(value = "/main")
	public String main(ModelMap model, Criteria cri, HttpServletResponse response) {
		logger.info("main");
		response.setCharacterEncoding("utf-8");
		return "/user/page/main";
	}

	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String idCheck(ModelMap model, Criteria cri, String id) throws Exception {
		logger.info("idCheck");
		String getId = MemberService.getId(id);
		logger.info(getId + "");
		System.out.println(getId);
		return getId + "";
	}

}

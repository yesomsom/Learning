package mango.reserve.common.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.service.Criteria;
import mango.member.service.MemberService;
import mango.member.service.MemberVO;
import mango.sms.Coolsms;

@Controller
@RequestMapping
public class PageController {

	@Resource(name = "memberService")
	private MemberService memberService;	

	@RequestMapping(value = "/myReview")
	public String myReview(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myReview";
	}

	@RequestMapping(value = "/orderDetail")
	public String orderDetail(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/orderDetail";
	}

	@RequestMapping(value = "/payment")
	public String payment(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/payment";
	}

	@RequestMapping(value = "/readArticle")
	public String readArticle(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/readArticle";
	}

	@RequestMapping(value = "/replyForm")
	public String replyForm(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/replyForm";
	}

	@RequestMapping(value = "/reservationAlert")
	public String reservationAlert(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/reservationAlert";
	}

	/*
	 * @RequestMapping(value = "/serviceCenter") public String
	 * serviceCenter(ModelMap model, Criteria cri) throws Exception {
	 * 
	 * return "/user/page/serviceCenter"; }
	 */

	@RequestMapping(value = "/studyCafe")
	public String studyCafe(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/studyCafe";
	}

	@RequestMapping(value = "/userChange")
	public String userChange(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/userChange";
	}

	@RequestMapping(value = "/userMean")
	public String userMean(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/userMean";
	}

	@RequestMapping(value = "/agreement")
	public String agreement(ModelMap model, Criteria cri) throws Exception {
		return "/user/page/agreement";
	}

	@RequestMapping(value = "/articleForm")
	public String articleForm(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/articleForm";
	}

	@RequestMapping(value = "/best")
	public String best(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/best";
	}

	@RequestMapping(value = "/cancelAlert")
	public String cancelAlert(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/cancelAlert";
	}

	@RequestMapping(value = "/cancelDetail")
	public String cancelDetail(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/cancelDetail";
	}

	@RequestMapping(value = "/conferenceRoom")
	public String conferenceRoom(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/conferenceRoom";
	}

	@RequestMapping(value = "/detail")
	public String detail(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/detail";
	}

	@RequestMapping(value = "/event")
	public String event(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/event";
	}

	@RequestMapping(value = "/index")
	public String index(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/index";
	}

	@RequestMapping(value = "/management")
	public String management(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/management";
	}

	@RequestMapping(value = "/meanMain")
	public String meanMain(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/meanMain";
	}

	@RequestMapping(value = "/menaResult")
	public String menaResult(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/menaResult";
	}

	@RequestMapping(value = "/memberForm")
	public String memberForm(ModelMap model, Criteria cri, MemberVO memberVO) throws Exception {
		return "/user/page/memberForm";
	}

	@RequestMapping(value = "/memberForm/insert", method = RequestMethod.POST)
	public String insertMemberForm(ModelMap model, Criteria cri, MemberVO memberVO) throws Exception {
		memberService.insertMember(memberVO);
		return "/user/page/memberForm";
	}

	

	@RequestMapping(value = "/login")
	public String login(ModelMap model, Criteria cri, HttpServletRequest request, HttpServletResponse response,
			MemberVO member) throws Exception {
		member = memberService.login(member);
		System.out.println(member);
		if (member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			session.setAttribute("isLogOn", true);
			return "/user/main";
		} else {
			model.addAttribute("result", "loginFailed");
			return "/user/page/login";
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model, Criteria cri, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		return "/user/main";
	}

	@RequestMapping(value = "/myQA")
	public String myQA(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myQA";
	}

	@RequestMapping(value = "/myReservation")
	public String myReservation(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myReservation";
	}

	@RequestMapping(value = "/myGrade")
	public String myGrade(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myGrade";
	}

	@RequestMapping(value = "/myPoint")
	public String myPoint(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myPoint";
	}

	@RequestMapping(value = "/myPayment")
	public String myPayment(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myPayment";
	}

	@RequestMapping(value = "/myCoupon")
	public String myCoupon(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myCoupon";
	}

	@RequestMapping(value = "/myReserv")
	public String myReserv(ModelMap model, Criteria cri) throws Exception {

		return "/user/page/myReserv";
	}

	// 아이디 찾기

	@RequestMapping(value = "/check/idFindForm")
	public String idFindForm(ModelMap model, Criteria cri, MemberVO memberVO) throws Exception {
		return "/user/page/check/idFindForm";
	}
	// 유효성 검사

	/*
	 * @RequestMapping(value="/idFind",method=RequestMethod.POST)
	 * 
	 * public String idFind(ModelMap model, Criteria
	 * cri, @ModelAttribute("memberVO") MemberVO memberVO, HttpServletRequest
	 * request) throws Exception { System.out.println("Email" +
	 * memberVO.getEmail());
	 * 
	 * if (memberService.id_find_check(memberVO.getEmail()) == 0) {
	 * model.addAttribute("msg", "이메일을 확인해주세요"); return "/user/page/idFindForm"; }
	 * else { model.addAttribute("idFind",
	 * memberService.idFind(memberVO.getEmail())); return "/user/page/idFind";
	 * 
	 * } }
	 */

}
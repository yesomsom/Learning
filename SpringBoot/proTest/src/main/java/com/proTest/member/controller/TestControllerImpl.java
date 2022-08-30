package com.proTest.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proTest.member.service.TestService;
import com.proTest.member.vo.TestVO;

@Controller("memberController")
public class TestControllerImpl implements TestController {
	@Autowired
	private TestService memberService;

	@Autowired
	private TestVO testVO;

	@Override
	@RequestMapping(value = "/test9.do", method = RequestMethod.POST)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// public String listMembers(HttpServletRequest request, HttpServletResponse
		// response) throws Exception {
		// String viewName = (String)request.getAttribute("viewName");
		List membersList = memberService.listMembers();
		// ModelAndView mav = new ModelAndView(viewName);
		ModelAndView mav = new ModelAndView("/listtest");

		mav.addObject("membersList", membersList);
		return mav;
	}

//	@Override
//	@RequestMapping(value = "/member/addMember.do", method = RequestMethod.POST)
//	public ModelAndView addMember(@ModelAttribute("member") TestVO member, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		request.setCharacterEncoding("utf-8");
//		int result = 0;
//		result = memberService.addMember(member);
//		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
//		return mav;
//	}
//
//	@Override
//	@RequestMapping(value = "/member/removeMember.do", method = RequestMethod.GET)
//	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//		request.setCharacterEncoding("utf-8");
//		memberService.removeMember(id);
//		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
//		return mav;
//	}
//
//	@Override
//	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
//	public ModelAndView login(@ModelAttribute("member") TestVO member, RedirectAttributes rAttr,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		testVO = memberService.login(member);
//		if (testVO != null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("member", testVO);
//			session.setAttribute("isLogOn", true);
//
//			String action = (String) session.getAttribute("action");
//			session.removeAttribute("action");
//			if (action != null) {
//				mav.setViewName("redirect:" + action);
//			} else {
//				mav.setViewName("redirect:/member/listMembers.do");
//			}
//
//		} else {
//			rAttr.addAttribute("result", "loginFailed");
//			mav.setViewName("redirect:/member/loginForm.do");
//		}
//
//		return mav;
//	}
//
//	@Override
//	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
//	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		HttpSession session = request.getSession();
//		session.removeAttribute("member");
//		session.setAttribute("isLogOn", false);
//
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("redirect:/member/listMembers.do");
//		return mav;
//	}

	@RequestMapping(value = "/member/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);

		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = { "/", "/testform.do" }, method = RequestMethod.GET)
	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
}
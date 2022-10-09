package mango.mango.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.InfoDto;
import mango.mango.model.MemberDto;
import mango.mango.model.PayDto;
import mango.mango.model.ReserveDto;
import mango.mango.model.TheaterVO;
import mango.mango.service.InfoService;
import mango.mango.service.PayService;
import mango.mango.service.ReserveService;
import mango.mango.service.TheaterService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class ReserveController {

	@Autowired
	ReserveService ReserveService;

	@Autowired
	PayService PayService;

	@Autowired
	TheaterService TheaterService;

	@Autowired
	InfoService InfoService;

	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/reserve")
	public String reserve(ModelMap model, Criteria cri) throws Exception {
		logger.info("reserve");

		TheaterVO theaterVO = new TheaterVO();

		List<TheaterVO> CGVTheaterList = TheaterService.selectCGVTheaterList(theaterVO);
		model.addAttribute("CGVTheaterList", CGVTheaterList);	

		List<TheaterVO> LotteTheaterList = TheaterService.selectLotteTheaterList(theaterVO);
		model.addAttribute("LotteTheaterList", LotteTheaterList);

		List<TheaterVO> MegaTheaterList = TheaterService.selectMegaTheaterList(theaterVO);
		model.addAttribute("MegaTheaterList", MegaTheaterList);

		InfoDto infoDto = new InfoDto();
		List<InfoDto> movieListKo = InfoService.selectTheaterListKo(infoDto);
		model.addAttribute("movieListKo", movieListKo);

		theaterVO.setGroupdata("1");
		List<TheaterVO> theaterList = TheaterService.selectCGVList(theaterVO);
		model.addAttribute("TheaterList", theaterList);

		return "/user/page/reserve";
	}

	@RequestMapping(value = "/reserve_ajax", method = RequestMethod.GET, produces = "application/text;charset=UTF-8")
	public ResponseEntity<String> theaterAjax(ModelMap model, Criteria cri, TheaterVO theaterVO) throws Exception {
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html;charset=UTF-8");

		List<TheaterVO> dataList = TheaterService.selectCGVList(theaterVO);
		model.addAttribute("dataList", dataList);

		String gson = new Gson().toJson(dataList);

		return new ResponseEntity<String>(gson, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/seat")
	public String seat(ModelMap model, Criteria cri, ReserveDto dto) throws Exception {

		System.out.println(dto.toString());
		logger.info("seat");
		model.addAttribute("reserve", dto);

		return "/user/page/seat";
	}

	@RequestMapping(value = "/kakao")
	public String Kakao(ModelMap model, Criteria cri, ReserveDto dto, PayDto payDto, HttpSession session)
			throws Exception {

		return "/user/page/kakao";
	}

	@RequestMapping(value = "/kakao/insert", method = RequestMethod.POST)
	public String insertKakao(ModelMap model, Criteria cri, ReserveDto dto, PayDto payDto, HttpSession session)
			throws Exception {
		System.out.println(dto.toString());
		logger.info("Kakao");
		MemberDto login = (MemberDto) session.getAttribute("login");

		dto.setId(login.getId());

		int isSuccess = ReserveService.Reserve(dto);

		System.out.println(isSuccess);

		model.addAttribute("reserve", dto);
		model.addAttribute("pay", payDto);

		if (isSuccess != 1) {

			return "redirect:/page/main.do";
		}
		return "/user/page/kakao";
	}

	@RequestMapping(value = "/payKakao")
	public String payKakao(ModelMap model, Criteria cri, ReserveDto dto, PayDto payDto, HttpSession session)
			throws Exception {
		logger.info("Kakao");
		MemberDto login = (MemberDto) session.getAttribute("login");

		dto.setId(login.getId());

		List<ReserveDto> list = ReserveService.getReserve(dto);

		payDto.setId(list.get(0).getId());
		payDto.setReserveSequence(list.get(0).getReserveSequence());
		System.out.println(list);
		System.out.println(payDto.toString());
		int isSuccess = PayService.payTicket(payDto);
		System.out.println(isSuccess);

		if (isSuccess != 1) {
			System.out.println("결제오류");
			return "redirect:/page/main.do";
		}
		model.addAttribute("type", "reserve");
		model.addAttribute("isSuccess", isSuccess);

		return "redirect:/page/myPage.do";
	}

	/*
	 * @RequestMapping(value = "/payKakao/insert" , method = RequestMethod.POST )
	 * public String insertpayKakao(ModelMap model, Criteria cri, ReserveDto dto,
	 * PayDto payDto, HttpSession session) throws Exception {
	 * 
	 * logger.info("Kakao"); MemberDto login = (MemberDto)
	 * session.getAttribute("login");
	 * 
	 * dto.setId(login.getId());
	 * 
	 * List<ReserveDto> list = ReserveService.getReserve(dto);
	 * 
	 * payDto.setId(list.get(0).getId());
	 * payDto.setReserveSequence(list.get(0).getReserveSequence());
	 * System.out.println(list); System.out.println(payDto.toString()); int
	 * isSuccess = PayService.payTicket(payDto); System.out.println(isSuccess);
	 * 
	 * if (isSuccess != 1) { System.out.println("결제오류"); return
	 * "redirect:/page/main.do"; } model.addAttribute("type", "reserve");
	 * model.addAttribute("isSuccess", isSuccess);
	 * 
	 * return "/user/page/myPage"; }
	 */

	@RequestMapping(value = "/myPage")
	public String Main(ModelMap model, Criteria cri, Model modele, ReserveDto reserveDto, PayDto payDto,
			HttpSession session) throws Exception {
		MemberDto login = (MemberDto) session.getAttribute("login");

		reserveDto.setId(login.getId());
		List<ReserveDto> list = ReserveService.selectMapping(reserveDto);

		if (list != null) {
			for (ReserveDto dto : list) {
				System.out.println(dto.toString());
				modele.addAttribute("reserveList", list);
			}
		} else {
			System.out.println("오류발생");
		}

		return "/user/page/myPage";
	}

	@RequestMapping(value = "/myPage/insert", method = RequestMethod.POST)
	public String insertMyPage(ModelMap model, Criteria cri, Model modele, ReserveDto reserveDto, PayDto payDto,
			HttpSession session) throws Exception {
		MemberDto login = (MemberDto) session.getAttribute("login");

		reserveDto.setId(login.getId());
		List<ReserveDto> list = ReserveService.selectMapping(reserveDto);

		if (list != null) {
			for (ReserveDto dto : list) {
				System.out.println(dto.toString());
				modele.addAttribute("reserveList", list);
			}
		} else {
			System.out.println("오류발생");
		}

		return "/user/page/myPage";
	}
}
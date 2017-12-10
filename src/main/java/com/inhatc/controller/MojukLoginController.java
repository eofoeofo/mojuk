package com.inhatc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inhatc.service.MojukService;

@Controller
@RequestMapping("/mojuk/*")

public class MojukLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(MojukLoginController.class);

	@Inject
	private MojukService service;
	
	/*@RequestMapping(value = "/login", method = RequestMethod.GET)
	public int login(String cnum, HttpSession session) {
		HashMap<String, String> hstParam = new HashMap<String, String>();

		hstParam.put("cnum", cnum);
		hstParam.put("userpw", userpw);

		int loginIdentify = service.loginCheck(hstParam);

		if (loginIdentify == 1) {
			session.setAttribute("cnum", cnum);
			session.setAttribute("userpw", userpw);
		}

		return loginIdentify;
	}*/
	
	@RequestMapping(value = "/loginpage.do")

	public ModelAndView loginpage(HttpSession session){

		ModelAndView mav = new ModelAndView();

		String cnum = (String)session.getAttribute("cnum");

		if (cnum != null) {		//session check
			mav.setViewName("redirect:/");
			return mav;
		}
		mav.setViewName("/login/loginpage");
		return mav;
	}

	@RequestMapping(value = "/logout")

	public String logout(HttpSession session){

		String curTime = new SimpleDateFormat("yyyy/MM/dd/HH:mm").format(new Date());

		System.out.println("logout 현재시간 : "+curTime);

		session.invalidate();			//session 종료(안에있는 데이터 다삭제)
		return "redirect:/loginpage";
	}

	@RequestMapping(value = "/logoutpage")
	public String loginpage(){
		return "/login/loginpage";
	}
	
	/*@RequestMapping(value = "/members.do")
	public ModelAndView members(MojukVO vo, HttpSession session) throws Exception{
		

		ModelAndView mav = new ModelAndView();
		String USER_PWD = EncryptUtil.encrypt(vo.getMember_password());
		vo.setUserpw(USER_PWD);
		MojukDAO.insertMember(vo);
		mav.setViewName("redirect:/loginpage.do");
		System.out.println("insert시작함");

		return mav;
	}*/
}

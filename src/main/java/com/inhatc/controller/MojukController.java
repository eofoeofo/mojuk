package com.inhatc.controller;

import java.awt.List;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestMapping;
import com.inhatc.domain.MojukVO;
import com.inhatc.service.MojukService;

@Controller
@RequestMapping("/mojuk/*")

public class MojukController {

	private static final Logger logger = LoggerFactory.getLogger(MojukController.class);

	@Inject
	private MojukService service;

	@RequestMapping(value = "/listview", method = RequestMethod.GET)
	public void listview(MojukVO vo, Model model) throws Exception {

		logger.info("show all list.............");
		model.addAttribute("listv", service.listview());

	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(MojukVO vo, Model model) throws Exception {

		ArrayList<MojukVO> Lvo = (ArrayList)service.read(vo);
		model.addAttribute(Lvo.get(0));
		System.out.println(Lvo.get(0).getCnum());
		System.out.println(Lvo.get(0).getUsername());
		System.out.println(Lvo.get(0).getDepart());
		
		 model.addAttribute("list1", service.listAll(vo)); 
		 model.addAttribute("list2", service.listAll2(vo));
		 model.addAttribute("list3", service.listAll3(vo));
		 
	}

	@RequestMapping(value = "/read", method = RequestMethod.POST)
	public String readPOST(MojukVO vo, Model model, RedirectAttributes rttr, HttpServletRequest request)
			throws Exception {

		System.out.println("register post ........");

		//vo.setCnum(cnum);
		System.out.println("getcnum : "+vo.getCnum());
		
		boolean temp[] = new boolean[4];
		for (int i = 0; i < 4; i++) {
			if (request.getParameter("chkok" + i) == null) {
				temp[i] = false;
			} else {
				temp[i] = true;
			}
			System.out.println("chkok_" + i + ":" + temp[i]);
		}
		vo.setVideo1_in(temp[0]);
		vo.setGuide1_in(temp[1]);
		vo.setTukgang1_in(temp[2]);
		vo.setJindan1_in(temp[3]);

		boolean temp2[] = new boolean[3];
		for (int i = 0; i < 3; i++) {
			if (request.getParameter("chkok2" + i) == null) {
				temp2[i] = false;
			} else {
				temp2[i] = true;
			}
			System.out.println("chkok2_" + i + ": " + temp2[i]);
		}
		vo.setPom2_in(temp2[0]);
		vo.setSoc2_in(temp2[1]);
		vo.setWow2_in(temp2[2]);

		boolean temp3[] = new boolean[3];
		for (int i = 0; i < 3; i++) {
			if (request.getParameter("chkok3" + i) == null) {
				temp3[i] = false;
			} else {
				temp3[i] = true;
			}
			System.out.println("chkok3_" + i + ": " + temp3[i]);
		}
		vo.setToc3_in(temp3[0]);
		vo.setFly3_in(temp3[1]);
		vo.setFlyup3_in(temp3[2]);
		//service.read(vo);

		service.regist(vo);
		service.regist2(vo);
		service.regist3(vo);

		/*
		 * int i = 0; String chkok[] = request.getParameterValues("chkok"); for(String
		 * temp : chkok){ System.out.println("chkok"+i+": " + temp); i++; }
		 */

		/*
		 * model.addAttribute("list1", service.listAll(vo)); model.addAttribute("list2",
		 * service.listAll2(vo)); model.addAttribute("list3", service.listAll3(vo));
		 */
		rttr.addFlashAttribute("msg", "success");

		// return "/mojuk/success";
		return "redirect:/mojuk/listview";
	}
	
	/*
	 * @RequestMapping(value = "/register", method = RequestMethod.GET) public void
	 * registGET(MojukVO mojuk, Model model) throws Exception {
	 * logger.info("register get .......");
	 * 
	 * model.addAttribute("list1", service.listAll()); model.addAttribute("list2",
	 * service.listAll2()); model.addAttribute("list3", service.listAll3());
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "/register", method = RequestMethod.POST) public
	 * String registPOST(MojukVO vo,Model model, RedirectAttributes rttr,
	 * HttpServletRequest request) throws Exception {
	 * 
	 * logger.info("register post ........");
	 * 
	 * boolean temp[] = new boolean[4]; for (int i = 0; i < 4; i++) { if
	 * (request.getParameter("chkok" + i) == null) { temp[i] = false; } else {
	 * temp[i] = true; } System.out.println("chkok_" + i + ":" + temp[i]); }
	 * 
	 * boolean temp2[] = new boolean[3]; for (int i = 0; i < 3; i++) { if
	 * (request.getParameter("chkok2" + i) == null) { temp2[i] = false; } else {
	 * temp2[i] = true; } System.out.println("chkok2_" + i + ": " + temp2[i]); }
	 * 
	 * boolean temp3[] = new boolean[3]; for (int i = 0; i < 3; i++) { if
	 * (request.getParameter("chkok3" + i) == null) { temp3[i] = false; } else {
	 * temp3[i] = true; } System.out.println("chkok3_" + i + ": " + temp3[i]); }
	 * 
	 * 
	 * int i = 0; String chkok[] = request.getParameterValues("chkok"); for(String
	 * temp : chkok){ System.out.println("chkok"+i+": " + temp); i++; }
	 * 
	 * 
	 * service.regist(vo); service.regist2(vo); service.regist3(vo);
	 * 
	 * model.addAttribute("list1", service.listAll()); model.addAttribute("list2",
	 * service.listAll2()); model.addAttribute("list3", service.listAll3());
	 * rttr.addFlashAttribute("msg", "success");
	 * 
	 * // return "/mojuk/success"; return "redirect:/mojuk/listAll"; }
	 */
	/*
	 * @RequestMapping(value = "/modify", method = RequestMethod.POST) public String
	 * modifyPOST(MojukVO mojuk, RedirectAttributes rttr) throws Exception {
	 * 
	 * logger.info("mod post ........");
	 * 
	 * service.regist(mojuk);
	 * 
	 * rttr.addFlashAttribute("msg", "success");
	 * 
	 * // return "/mojuk/success"; return "redirect:/mojuk/listAll"; }
	 */

	/*
	 * @RequestMapping(value = "/listAll", method = RequestMethod.GET) public void
	 * listAll(HttpServletRequest httpServletRequest, Model model) throws Exception
	 * {
	 * 
	 * System.out.println("RequestMethod.GET");
	 * 
	 * logger.info("show all list............."); model.addAttribute("list1",
	 * service.listAll(vo)); model.addAttribute("list2", service.listAll2(vo));
	 * model.addAttribute("list3", service.listAll3(vo)); }
	 */

}

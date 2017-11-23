package com.inhatc.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET(MojukVO mojuk, Model model) throws Exception {
		model.addAttribute("list1", service.listAll());
		//model.addAttribute("list2", service.listAll());
		//model.addAttribute("list3", service.listAll());

		logger.info("register get .......");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MojukVO mojuk, Model model, RedirectAttributes rttr) throws Exception {

		logger.info("register post ........");
		logger.info(mojuk.toString());
		
		model.addAttribute("list1" , service.listAll());
		
		
		System.out.println("chkok${status.index} : " + mojuk.isVideo1_in());
		System.out.println("chkok${status.index} : " + mojuk.isGuide1_in());
		System.out.println("chkok${status.index} : " + mojuk.isTukgang1_in());
		System.out.println("chkok${status.index} : " + mojuk.isJindan1_in());
		

		service.regist(mojuk);

		rttr.addFlashAttribute("msg", "success");

		// return "/mojuk/success";
		return "redirect:/mojuk/listAll";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(MojukVO mojuk, RedirectAttributes rttr) throws Exception {

		logger.info("mod post ........");

		service.regist(mojuk);

		rttr.addFlashAttribute("msg", "success");

		// return "/mojuk/success";
		return "redirect:/mojuk/listAll";
	}

	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public void listAll(HttpServletRequest httpServletRequest, Model model) throws Exception {
		
		System.out.println("RequestMethod.GET");
		
		logger.info("show all list.............");
		model.addAttribute("list1", service.listAll());
		model.addAttribute("list2", service.listAll());
		model.addAttribute("list3", service.listAll());
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("cnum") String cnum, Model model) throws Exception {

		model.addAttribute(service.read(cnum));
	}


}

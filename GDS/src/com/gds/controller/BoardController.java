package com.gds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@RequestMapping("/notice.do")
	public String moveNotice(Model model){
		model.addAttribute("contentPage", "/board_notice.jsp");
		return "index";
	}
	
	@RequestMapping("/event.do")
	public String moveEvent(Model model){
		model.addAttribute("contentPage", "/board_event.jsp");
		return "index";
	}
	
	@RequestMapping("/faq.do")
	public String moveFaq(Model model){
		model.addAttribute("contentPage", "/board_faq.jsp");
		return "index";
	}
	
}

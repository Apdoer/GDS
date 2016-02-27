package com.gds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CounselController {

	@RequestMapping("/board.do")
	public String stockDetail(Model model){
		
		model.addAttribute("contentPage", "/board_notice.jsp");
		
		return "index";
	}	
}

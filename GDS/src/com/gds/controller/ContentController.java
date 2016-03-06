package com.gds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContentController {
	
	@RequestMapping("/introduce.do")
	public String monveCounsel(Model model){		
		model.addAttribute("contentPage", "/introduce.jsp");
		return "index";
	}
	
	@RequestMapping("/program_deasa.do")
	public String program(Model model){		
		model.addAttribute("contentPage", "/program_deasa.jsp");
		return "index";
	}

}

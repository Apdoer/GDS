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
	
	@RequestMapping("/clinic1.do")
	public String clinic1(Model model){
		model.addAttribute("contentPage","/clinic1.jsp");
		return "index";
	}
	
	@RequestMapping("/clinic2.do")
	public String clinic2(Model model){
		model.addAttribute("contentPage","/clinic2.jsp");
		return "index";
	}
	
	@RequestMapping("/clinic3.do")
	public String clinic3(Model model){
		model.addAttribute("contentPage","/clinic3.jsp");
		return "index";
	}
	
	@RequestMapping("/clinic4.do")
	public String clinic4(Model model){
		model.addAttribute("contentPage","/clinic4.jsp");
		return "index";
	}

}

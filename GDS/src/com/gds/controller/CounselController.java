package com.gds.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CounselController {

	@RequestMapping("/counsel.do")
	public String monveCounsel(Model model){
		System.out.println("��Ʈ�ѷ� ȣ��!");
		
		model.addAttribute("contentPage", "/board_counsel.jsp");
		
		return "index";
	}	
}

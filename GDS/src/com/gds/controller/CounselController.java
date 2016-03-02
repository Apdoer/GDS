package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gds.service.CounselService;
import com.gds.vo.CounselVO;

@Controller
public class CounselController {
	
	private CounselService counselService;
	
	@Autowired
	public void setCounselService(CounselService counselService){
		this.counselService=counselService;
	}
	

	@RequestMapping("/counsel.do")
	public String monveCounsel(Model model){		
		model.addAttribute("contentPage", "/board_counsel.jsp");
		return "index";
	}
	
	@RequestMapping("/createCounsel.do")
	public String createCounsel(CounselVO counsel, Model model){
		//Counsel testC = new Counsel(2,"N","20160302",1,"test","01099990000","10","testtest","haha","N");
		counselService.createCounsel(counsel);
		model.addAttribute("contentPage", "/index.jsp");
		return "index";
	}
	
}

package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.BlogService;
import com.gds.service.BoardService;

@Controller
public class ContentController {
	
	@Autowired
	BlogService blogService;
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/introduce.do")
	public String monveCounsel(Model model){		
		model.addAttribute("contentPage", "/introduce.jsp");
		return "index";
	}
	
	@RequestMapping("/program_deasa.do")
	public String program_deasa(Model model){		
		model.addAttribute("contentPage", "/program_deasa.jsp");
		return "index";
	}
	
	@RequestMapping("/program_goap.do")
	public String program_goap(Model model){		
		model.addAttribute("contentPage", "/program_goap.jsp");
		return "index";
	}
	
	@RequestMapping("/program_chunggigac.do")
	public String program_chunggigac(Model model){		
		model.addAttribute("contentPage", "/program_chunggigac.jsp");
		return "index";
	}
	
	@RequestMapping("/program_sigigac.do")
	public String program_sigigac(Model model){		
		model.addAttribute("contentPage", "/program_sigigac.jsp");
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
	
	@RequestMapping("/getHomeContent.ajax")
	@ResponseBody
	public ModelAndView home(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("blogList", blogService.selectMain());
		mav.addObject("boardList", boardService.getHomeBoard());
		mav.setViewName("home_content_ajax");
		return mav;
	}

}

package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gds.service.BoardService;
import com.gds.service.CategoryService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/enter.do")
	public String moveBoard(Model model) {
		model.addAttribute("contentPage", "/qna.jsp");
		return "index";
	}
	
	@RequestMapping("/form.do")
	public String moveForm(Model model) {
		model.addAttribute("contentPage", "/qna_form.jsp");
		return "index";
	}
	
}

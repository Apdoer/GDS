package com.gds.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gds.model.Category;
import com.gds.service.BoardService;
import com.gds.service.CategoryService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CategoryService categoryService;
	
//	@Autowired
//	public void setBoardService(BoardService boardService) {
//		this.boardService = boardService;
//	}
//	
//	@Autowired
//	public void setCategoryService(CategoryService categoryService) {
//		this.categoryService = categoryService;
//	}

	@RequestMapping("/notice.do")
	public String moveNotice(Model model) {
		model.addAttribute("contentPage", "/board_notice.jsp");
		return "index";
	}
	
	@RequestMapping("/event.do")
	public String moveEvent(Model model) {
		model.addAttribute("contentPage", "/board_event.jsp");
		return "index";
	}
	
	@RequestMapping("/faq.do")
	public String moveFaq(Model model) {
		List<Category> categoryList = categoryService.listCategory(Category.GUBUN_F);
		System.out.println(categoryList);
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("contentPage", "/board_faq.jsp");
		return "index";
	}
	
}

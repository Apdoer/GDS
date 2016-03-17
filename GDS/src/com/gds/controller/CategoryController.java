package com.gds.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.CategoryService;
import com.gds.vo.CategoryVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	private static final Logger LOGGER = Logger.getLogger(CategoryController.class);
	
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/create.do")
	public String createCategory(CategoryVO category) {
		categoryService.createCategory(category);
		return "httpTest";
	}
	
	@RequestMapping("/select.do")
	public ModelAndView selectCategory(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", categoryService.pagingCategory(searchVO));
		mav.setViewName("httpTest");
		return mav;
	}
	
	@RequestMapping("/modify.do")
	public String modifyCategory(CategoryVO category) {
		categoryService.modifyCategory(category);
		return "httpTest";
	}
	
	@RequestMapping("/delete.do")
	public String deleteCategory(int id) {
		categoryService.deleteCategory(id);
		return "httpTest";
	}
	
	@RequestMapping("/select.ajax")
	@ResponseBody
	public List<CategoryVO> ajaxSelect() {
		LOGGER.info("ajax inc.");
		return categoryService.listCategory();
	}
	
}

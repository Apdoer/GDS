package com.gds.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gds.model.Category;
import com.gds.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	private static final Logger LOGGER = Logger.getLogger(CategoryController.class);
	
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/create.do")
	public String createCategory(Category category) {
		categoryService.createCategory(category);
		return "httpTest";
	}
	
	@RequestMapping("/modify.do")
	public String modifyCategory(Category category) {
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
	public List<Category> ajaxSelect() {
		LOGGER.info("ajax inc.");
		return categoryService.listCategory();
	}
	
}

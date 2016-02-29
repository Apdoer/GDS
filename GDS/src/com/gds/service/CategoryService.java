package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CategoryDao;
import com.gds.model.Category;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDao categoryDao;
	
//	@Autowired
//	public void setCategoryDao(CategoryDao categoryDao) {
//		this.categoryDao = categoryDao;
//	}
	
	public List<Category> listCategory(String gubun) {
		return categoryDao.selectCategory(gubun);
	}

}

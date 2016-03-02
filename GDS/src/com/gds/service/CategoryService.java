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
	
	/**
	 * Create category.
	 * 
	 * @param category
	 * @return
	 */
	public boolean createCategory(Category category) {
		int id = categoryDao.getMaxId() + 1;
		category.setId(id);
		return categoryDao.insert(category) == 1;		
	}
	
	/**
	 * Select all categories.
	 * 
	 * @param gubun
	 * @return
	 */
	public List<Category> listCategory() {
		return categoryDao.select();
	}
	
	/**
	 * Update category with id.
	 * 
	 * @param category
	 * @return
	 */
	public int modifyCategory(Category category) {
		return categoryDao.update(category);
	}

	/**
	 * Delete category with id.
	 * 
	 * @param id
	 * @return
	 */
	public int deleteCategory(int id) {
		return categoryDao.delete(id);
	}

}

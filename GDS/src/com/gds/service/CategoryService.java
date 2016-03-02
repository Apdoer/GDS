package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CategoryDao;
import com.gds.vo.CategoryVO;
import com.gds.vo.SearchVO;

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
	public boolean createCategory(CategoryVO category) {
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
	public List<CategoryVO> listCategory() {
		return categoryDao.select();
	}
	
	public SearchVO pagingCategory(SearchVO searchVO) {
		searchVO.setMaxPageSize(3);
		searchVO.setMaxLinkCount(5);
		
		searchVO.initPagination(categoryDao.getTotalCount());
		searchVO.setResult(categoryDao.paging(searchVO));
		return searchVO;
	}
	
	/**
	 * Update category with id.
	 * 
	 * @param category
	 * @return
	 */
	public int modifyCategory(CategoryVO category) {
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

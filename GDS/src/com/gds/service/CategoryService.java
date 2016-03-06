package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CategoryDao;
import com.gds.util.PagingConstants;
import com.gds.vo.CategoryVO;
import com.gds.vo.SearchVO;

@Service
public class CategoryService {
	
	private static final int MAX_PAGE_SIZE = PagingConstants.COMMON_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstants.COMMON_MAX_LINK_COUNT;
	
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
	
	/**
	 * Select paged categories.
	 * 
	 * @param searchVO
	 * @return
	 */
	public SearchVO pagingCategory(SearchVO searchVO) {
		searchVO.setMaxPageSize(MAX_PAGE_SIZE);
		searchVO.setMaxLinkCount(MAX_LINK_COUNT);
		
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

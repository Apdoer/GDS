package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.CategoryVO;
import com.gds.vo.SearchVO;

@Repository
public class CategoryDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * Get max id.
	 * 
	 * @return
	 */
	public int getMaxId() {
		return sqlSessionTemplate.selectOne("Category.getMaxId");
	}
	
	/**
	 * Get max seq.
	 * 
	 * @return
	 */
	public int getMaxSeq() {
		return sqlSessionTemplate.selectOne("Category.getMaxSeq");
	}
	
	/**
	 * Get total row count.
	 * 
	 * @return
	 */
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("Category.getTotalCount");
	}
	
	/**
	 * Create category.
	 * 
	 * @param category
	 * @return
	 */
	public int insert(CategoryVO category) {
		return sqlSessionTemplate.insert("Category.insert", category);
	}
	
	/**
	 * Select all categories.
	 * Categories will be ordered by gubun.
	 * 
	 * @param gubun
	 * @return
	 */
	public List<CategoryVO> select() {
		return sqlSessionTemplate.selectList("Category.select");
	}
	
	/**
	 * Select paged categories.
	 * 
	 * @param searchVO
	 * @return
	 */
	public List<?> paging(SearchVO searchVO) {
		return sqlSessionTemplate.selectList("Category.paging", searchVO);
	}
	
	/**
	 * Update category with id.
	 * 
	 * @param category
	 * @return
	 */
	public int update(CategoryVO category) {
		return sqlSessionTemplate.update("Category.update", category);
	}

	/**
	 * Delete category with id.
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return sqlSessionTemplate.update("Category.delete", id);
	}

}

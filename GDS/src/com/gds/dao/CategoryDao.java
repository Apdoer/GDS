package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.CategoryVO;

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
		return sqlSessionTemplate.delete("Category.delete", id);
	}

}

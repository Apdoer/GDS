package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.model.Category;

@Repository
public class CategoryDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Category> selectCategory(String gubun) {
		return sqlSessionTemplate.selectList("Category.listCategory", gubun);
	}
	
}

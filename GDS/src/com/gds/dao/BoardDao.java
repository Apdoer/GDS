package com.gds.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertBlog(String title, String content) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("title",title);
		map.put("content", content);
		
		sqlSessionTemplate.insert("Board.insertBlog", map);
		
	}
	
	public void inputStockCode(String code) {

		sqlSessionTemplate.insert("Stock.inputStockCode", code);
	}

}

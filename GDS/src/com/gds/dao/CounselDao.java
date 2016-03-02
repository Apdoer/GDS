package com.gds.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.CounselVO;

@Repository
public class CounselDao {
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
		this.sqlSessionTemplate=sqlSessionTemplate;
	}
	
	public void insertCounsel(CounselVO counsel) {
		sqlSessionTemplate.insert("Counsel.insertCounsel", counsel);	
	}

}

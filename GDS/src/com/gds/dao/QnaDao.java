package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.QnaVO;

@Repository
public class QnaDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * Get max id.
	 * 
	 * @return
	 */
	public int getMaxId() {
		return sqlSessionTemplate.selectOne("Qna.getMaxId");
	}
	
	/**
	 * Create qna.
	 * 
	 * @param qna
	 * @return
	 */
	public int insert(QnaVO qna) {
		return sqlSessionTemplate.insert("Qna.insert", qna);
	}
	
	/**
	 * Select all categories.
	 * Categories will be ordered by gubun.
	 * 
	 * @param gubun
	 * @return
	 */
	public List<QnaVO> select() {
		return sqlSessionTemplate.selectList("Qna.select");
	}
	
	/**
	 * Update answer in qna with id.
	 * 
	 * @param qna
	 * @return
	 */
	public int updateAnswer(QnaVO qna) {
		return sqlSessionTemplate.update("Qna.updateAnswer", qna);
	}

	/**
	 * Update delyn in qna with id.
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return sqlSessionTemplate.update("Qna.delete", id);
	}
	
}

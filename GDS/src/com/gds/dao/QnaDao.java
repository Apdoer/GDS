package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.QnaVO;
import com.gds.vo.SearchVO;

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
	 * Get total row count.
	 * 
	 * @return
	 */
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("Qna.getTotalCount");
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
	 * Select all qnas.
	 * 
	 * @param gubun
	 * @return
	 */
	public List<QnaVO> select() {
		return sqlSessionTemplate.selectList("Qna.select");
	}
	
	/**
	 * Select paged qnas.
	 * 
	 * @param searchVO
	 * @return
	 */
	public List<QnaVO> paging(SearchVO searchVO) {
		return sqlSessionTemplate.selectList("Qna.paging", searchVO);
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

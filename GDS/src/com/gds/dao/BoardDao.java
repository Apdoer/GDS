package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.BoardVO;
import com.gds.vo.SearchVO;

@Repository
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/**
	 * Get max id.
	 * 
	 * @return
	 */
	public int getMaxId() {
		return sqlSessionTemplate.selectOne("Board.getMaxId");
	}
	
	/**
	 * Get total row count.
	 * 
	 * @return
	 */
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("Board.getTotalCount");
	}
	
	/**
	 * Create board.
	 * 
	 * @param board
	 * @return
	 */
	public int insert(BoardVO board) {
		return sqlSessionTemplate.insert("Board.insert", board);
	}
	
	/**
	 * Select paged boards.
	 * 
	 * @param searchVO
	 * @return
	 */
	public List<?> paging(SearchVO searchVO) {
		return sqlSessionTemplate.selectList("Board.paging", searchVO);
	}
	
	/**
	 * Update board with id.
	 * 
	 * @param board
	 * @return
	 */
	public int update(BoardVO board) {
		return sqlSessionTemplate.update("Board.update", board);
	}

	/**
	 * Delete board with id.
	 * 
	 * @param id
	 * @return
	 */
	public int delete(int id) {
		return sqlSessionTemplate.update("Board.delete", id);
	}
	
//	public void insertBlog(String title, String content) {
//		
//		HashMap<String, String> map = new HashMap<>();
//		map.put("title",title);
//		map.put("content", content);
//		
//		sqlSessionTemplate.insert("Board.insertBlog", map);
//		
//	}
//	
//	public void inputStockCode(String code) {
//
//		sqlSessionTemplate.insert("Stock.inputStockCode", code);
//	}

}

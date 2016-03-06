package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.BoardDao;
import com.gds.util.PagingConstantUtil;
import com.gds.vo.BoardVO;
import com.gds.vo.SearchVO;

@Service
public class BoardService {

	private static final int MAX_PAGE_SIZE = PagingConstantUtil.COMMON_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstantUtil.COMMON_MAX_LINK_COUNT;
	
	@Autowired
	private BoardDao boardDao;

	/**
	 * Write board.
	 * 
	 * @param board
	 * @return
	 */
	public boolean writeBoard(BoardVO board) {
		int id = boardDao.getMaxId() + 1;
		board.setId(id);
		return boardDao.insert(board) == 1;
	}
	
	/**
	 * Select paged boards.
	 * 
	 * @param searchVO
	 * @return
	 */
	public SearchVO pagingBoard(SearchVO searchVO) {
		searchVO.setMaxPageSize(MAX_PAGE_SIZE);
		searchVO.setMaxLinkCount(MAX_LINK_COUNT);
		
		searchVO.initPagination(boardDao.getTotalCount());
		searchVO.setResult(boardDao.paging(searchVO));
		return searchVO;
	}

	/**
	 * Update board with id.
	 * 
	 * @param board
	 * @return
	 */
	public boolean modifyBoard(BoardVO board) {
		return boardDao.update(board) == 1;
	}

	/**
	 * Delete board with id.
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteBoard(int id) {
		return boardDao.delete(id) == 1;
	}

}

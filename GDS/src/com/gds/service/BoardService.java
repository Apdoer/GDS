package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.BoardDao;
import com.gds.util.PagingConstantUtil;
import com.gds.util.StringUtil;
import com.gds.vo.BoardVO;
import com.gds.vo.SearchVO;

@Service
public class BoardService {

	private static final int MAX_PAGE_SIZE = PagingConstantUtil.COMMON_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstantUtil.COMMON_MAX_LINK_COUNT;
	
	private static final int HOME_BOARD_SIZE = PagingConstantUtil.HOME_CONTENT_BOARD_SIZE;
	
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
	 * Get board with id.
	 * 
	 * @param board
	 * @return
	 */
	public BoardVO getBoard(BoardVO boardVO) {
		boardDao.plusConut(boardVO);
		return boardDao.get(boardVO);
	}
	
	/**
	 * Get boards for home content.
	 * 
	 * @param board
	 * @return
	 */
	public List<BoardVO> getHomeBoard() {
		List<BoardVO> boardList = boardDao.getHomeBoard(HOME_BOARD_SIZE);
		for (BoardVO board : boardList) {
			// reduce title length if it is too long to display.
			board.setTitle(StringUtil.reduceString(board.getTitle(), 32));
			
			// pick thumbnail if there's image in content
			board.setThumbnail(StringUtil.pickThumbnail(board.getContent()));
		}
		return boardList;
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

	public List<BoardVO> selectBoard5() {
		// TODO Auto-generated method stub
		return boardDao.selectBoard5();
	}

}

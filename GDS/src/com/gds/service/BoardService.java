package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.BoardDao;
import com.gds.vo.BoardVO;

@Service
public class BoardService {

	private BoardDao boardDao;

	@Autowired
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	
	public List<BoardVO> listBoard(String gubun) {
		return null;
	}
	
	public void insertBlog(String title, String content) {
		boardDao.insertBlog(title, content);
	}
	
}

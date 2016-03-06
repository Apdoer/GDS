package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.QnaDao;
import com.gds.util.PagingConstants;
import com.gds.vo.QnaVO;
import com.gds.vo.SearchVO;

@Service
public class QnaService {

	private static final int MAX_PAGE_SIZE = PagingConstants.COMMON_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstants.COMMON_MAX_LINK_COUNT;
	
	@Autowired
	private QnaDao qnaDao;
	
	/**
	 * Write Qna.
	 * 
	 * @param qna
	 * @return
	 */
	public boolean writeQna(QnaVO qna) {
		int id = qnaDao.getMaxId() + 1;
		qna.setId(id);
		return qnaDao.insert(qna) == 1;
	}
	
	/**
	 * Select paged qnas.
	 * 
	 * @param searchVO
	 * @return
	 */
	public SearchVO pagingQna(SearchVO searchVO) {
		searchVO.setMaxPageSize(MAX_PAGE_SIZE);
		searchVO.setMaxLinkCount(MAX_LINK_COUNT);
		
		searchVO.initPagination(qnaDao.getTotalCount());
		searchVO.setResult(qnaDao.paging(searchVO));
		return searchVO;
	}

	/**
	 * Answer to Qna.
	 * 
	 * @param qna
	 * @return
	 */
	public boolean answerQna(QnaVO qna) {
		return qnaDao.updateAnswer(qna) == 1;
	}
	
	/**
	 * Delete Qna.
	 * Update delyn field with 'y'
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteQna(int id) {
		return qnaDao.delete(id) == 1;
	}

}

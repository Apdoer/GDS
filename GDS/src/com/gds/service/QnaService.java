package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.QnaDao;
import com.gds.vo.QnaVO;

@Service
public class QnaService {

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

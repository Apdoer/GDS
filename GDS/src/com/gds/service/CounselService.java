package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CounselDao;
import com.gds.vo.CounselVO;
import com.gds.vo.SearchVO;

@Service
public class CounselService {
	
	private static final int MAX_PAGE_SIZE = 10;
	private static final int MAX_LINK_COUNT = 5;
	
	@Autowired
	private CounselDao counselDao;
	
	public void createCounsel(CounselVO counsel) {
		counselDao.insertCounsel(counsel);
	}

	/**
	 * Select paged boards.
	 * 
	 * @param searchVO
	 * @return
	 */
	public SearchVO pagingCounsel(SearchVO searchVO) {
		searchVO.setMaxPageSize(MAX_PAGE_SIZE);
		searchVO.setMaxLinkCount(MAX_LINK_COUNT);
		
		searchVO.initPagination(counselDao.getTotalCount());
		searchVO.setResult(counselDao.paging(searchVO));
		return searchVO;
	}

	/**
	 * Select counsel with id.
	 * 
	 * @param counselVO
	 * @return
	 */
	public CounselVO getCounsel(CounselVO counselVO) {
		return counselDao.getCounsel(counselVO);
	}

}

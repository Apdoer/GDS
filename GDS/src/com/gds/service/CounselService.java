package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CounselDao;
import com.gds.util.PagingConstantUtil;
import com.gds.vo.CounselVO;
import com.gds.vo.SearchVO;

@Service
public class CounselService {
	
	private static final int MAX_PAGE_SIZE = PagingConstantUtil.COUNSEL_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstantUtil.COUNSEL_MAX_LINK_COUNT;
	
	@Autowired
	private CounselDao counselDao;
	
	public boolean createCounsel(CounselVO counsel) {
		int max = counselDao.getMaxId();
		counsel.setId(++max);
		return counselDao.insertCounsel(counsel);
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
		return counselDao.get(counselVO);
	}
	
	/**
	 * Select undone counsel count
	 * 
	 * @return
	 */
	public int getUndoneCounselCount() {
		return counselDao.getUndoneCounselCount();
	}

	/**
	 * Update counsel with id.
	 * 
	 * @param counselVO
	 * @return
	 */
	public boolean modifyCounsel(CounselVO counselVO) {
		int result = counselDao.update(counselVO);
		return result == 1;
	}

}

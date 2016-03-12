package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.CounselVO;
import com.gds.vo.SearchVO;

@Repository
public class CounselDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * Get max id.
	 * 
	 * @return
	 */
	public int getMaxId() {
		return sqlSessionTemplate.selectOne("Counsel.getMaxId");
	}
	
	/**
	 * Get total row count.
	 * 
	 * @return
	 */
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("Counsel.getTotalCount");
	}
	
	public boolean insertCounsel(CounselVO counsel) {
		return sqlSessionTemplate.insert("Counsel.insertCounsel", counsel)>0;	
	}

	/**
	 * Select paged counsels.
	 * 
	 * @param searchVO
	 * @return
	 */
	public List<?> paging(SearchVO searchVO) {
		return sqlSessionTemplate.selectList("Counsel.paging", searchVO);
	}

	/**
	 * Select undone counsel count
	 * 
	 * @return
	 */
	public int getUndoneCounselCount() {
		return sqlSessionTemplate.selectOne("Counsel.getUndoneCounselCount");
	}
	
	/**
	 * Select counsel with id.
	 * 
	 * @param counselVO
	 * @return
	 */
	public CounselVO get(CounselVO counselVO) {
		return sqlSessionTemplate.selectOne("Counsel.get", counselVO);
	}
	
	/**
	 * Update counsel with id.
	 * 
	 * @param counselVO
	 * @return
	 */
	public int update(CounselVO counselVO) {
		return sqlSessionTemplate.update("Counsel.update", counselVO);
	}

}

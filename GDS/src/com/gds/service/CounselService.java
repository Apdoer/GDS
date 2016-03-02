package com.gds.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.CounselDao;
import com.gds.model.Counsel;

@Service
public class CounselService {
	
	private CounselDao counselDao;
	
	@Autowired
	public void setCounselDao(CounselDao counselDao){
		this.counselDao=counselDao;
	}

	public void createCounsel(Counsel counsel) {
		counselDao.insertCounsel(counsel);
	}

}

package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.BlogDao;
import com.gds.vo.BlogVO;

@Service
public class BlogService {

	@Autowired
	private BlogDao blogDao;
	
	public boolean insertBlog(BlogVO blogVO) {
		
		int id = blogDao.getMaxId() + 1;
		blogVO.setId(id);
		return blogDao.insert(blogVO) == 1;
	}

	public List<BlogVO> selectBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return blogDao.select(blogVO);
	}

	public List<BlogVO> selectBlogAll() {
		// TODO Auto-generated method stub
		return blogDao.selectBlogAll();
	}

	public int deleteBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return blogDao.deleteBlog(blogVO);
	}
	
}

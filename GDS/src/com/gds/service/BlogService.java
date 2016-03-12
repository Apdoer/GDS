package com.gds.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gds.dao.BlogDao;
import com.gds.util.PagingConstantUtil;
import com.gds.vo.BlogVO;
import com.gds.vo.SearchVO;

@Service
public class BlogService {
	
	private static final int MAX_PAGE_SIZE = PagingConstantUtil.COMMON_MAX_PAGE_SIZE;
	private static final int MAX_LINK_COUNT = PagingConstantUtil.COMMON_MAX_LINK_COUNT;

	@Autowired
	private BlogDao blogDao;
	
	public boolean insertBlog(BlogVO blogVO) {
		
		int id = blogDao.getMaxId() + 1;
		blogVO.setId(id);
		return blogDao.insert(blogVO) == 1;
	}

	public List<BlogVO> selectBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		       blogDao.plusConut(blogVO);
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

	public int updateBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return blogDao.updateBlog(blogVO);
	}
	
	public int plusConut(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return blogDao.plusConut(blogVO);
	}

	public Object pagingBlog(SearchVO searchVO) {
		searchVO.setMaxPageSize(MAX_PAGE_SIZE);
		searchVO.setMaxLinkCount(MAX_LINK_COUNT);
		
		searchVO.initPagination(blogDao.getTotalCount());
		searchVO.setResult(blogDao.paging(searchVO));
		return searchVO;
	}
	
}

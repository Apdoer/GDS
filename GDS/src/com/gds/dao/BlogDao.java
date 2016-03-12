package com.gds.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gds.vo.BlogVO;
import com.gds.vo.SearchVO;

@Repository
public class BlogDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * Get max id.
	 * 
	 * @return
	 */
	public int getMaxId() {
		return sqlSessionTemplate.selectOne("Blog.getMaxId");
	}
	
	/**
	 * Create blog.
	 * 
	 * @param blog
	 * @return
	 */
	public int insert(BlogVO blogVO) {
		return sqlSessionTemplate.insert("Blog.insert", blogVO);
	}

	/**
	 * select blog.
	 * 
	 * @param blog
	 * @return
	 */
	public List<BlogVO> select(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Blog.select", blogVO);
	}

	public List<BlogVO> selectBlogAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Blog.selectBlogAll");
	}

	public int deleteBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("Blog.delete", blogVO);
	}

	public int updateBlog(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("Blog.update", blogVO);
	}
	
	public int plusConut(BlogVO blogVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("Blog.plusConut", blogVO);
	}

	public int getTotalCount() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("Blog.getTotalCount");
	}

	public List<?> paging(SearchVO searchVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("Blog.paging", searchVO);
	}
	
}

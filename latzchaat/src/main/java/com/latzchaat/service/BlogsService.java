package com.latzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.dao.BlogDAO;
import com.latzchaat.model.Blogs;
@Service
@Transactional
@EnableTransactionManagement
public class BlogsService {
	BlogDAO blogDAO;
	
	
	public void setBlogDAO(BlogDAO blogDAO) {
		this.blogDAO = blogDAO;
	}
	
	@Autowired
	public BlogsService(BlogDAO blogDAO) {
		super();
		this.blogDAO = blogDAO;
	}


	public List<Blogs> getAllBlogs()
	{
		return blogDAO.getAllBlogs();
		
	}
	public void insertBlog(Blogs blogs)
	{
		blogDAO.insertBlog(blogs);
	}
	public Blogs getOneBlog(int blogid){
		
		return blogDAO.getOneBlogs(blogid);
	}

}

package com.latzchaat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.latzchaat.model.Blogs;
@Repository
public class BlogDAO implements BlogInterface {

	SessionFactory sessionFactory;
	
	
	@Autowired
	public BlogDAO(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void insertBlog(Blogs blog) {
		Session session=sessionFactory.getCurrentSession();
		session.save(blog);	
	}

	public Blogs getOneBlogs(int blogid) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Blogs> getAllBlogs() {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Blogs");
		List<Blogs> blogs=q.list();
		return blogs;
	}

}

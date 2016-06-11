package com.latzchaat.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.latzchaat.model.UserDetails;

@Repository
@Qualifier(value="userDAO")
public class UserDAO implements UserDAOInterface {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	
	public UserDAO(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	public void registerUser(UserDetails user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}

	public UserDetails getUserDetails(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

}

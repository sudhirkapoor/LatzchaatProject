package com.latzchaat.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.model.UserDetails;


@Repository
public class UserDAO implements UserDAOInterface {

	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Autowired
	public UserDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public UserDetails getUserByName(String email) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(UserDetails.class);
		c.add(Restrictions.like("email", email));
		return (UserDetails)c.uniqueResult();
	}

	public UserDetails getUserDetails(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void registerUser(UserDetails userDetails) {
		
		Session session=sessionFactory.getCurrentSession();
		System.out.println("Hello from DAO");
		userDetails.setEnabled(1);
		userDetails.setRole("ROLE_USER");
		session.save(userDetails);		
	}
	
	public void updateUserDetails(UserDetails userDetail)
	{
		Session session=sessionFactory.getCurrentSession();
		session.update(userDetail);
	}


}

package com.latzchaat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.dao.UserDAO;
import com.latzchaat.model.UserDetails;

@Service
@Transactional
public class UserService {
//	@Qualifier("userDAO")
	private UserDAO userDAO;

	public void setUdao(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Autowired
	public UserService(UserDAO userDAO) {
		
		this.userDAO= userDAO;
	}
	/*Service Method for user registration*/
	public void registerUser(UserDetails user) {
		/*
		 * calling registerUser method for registring the new user this method
		 * belongs to UserDAO
		 */
		userDAO.registerUser(user);
	}

}

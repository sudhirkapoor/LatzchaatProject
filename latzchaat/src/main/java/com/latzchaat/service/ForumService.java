/*package com.latzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.latzchaat.dao.ForumDAO;
import com.latzchaat.model.Forum;
@Transactional
@EnableTransactionManagement
@Service
public class ForumService {
	@Autowired
	private ForumDAO forumDAO;

	public void setForumDAO(ForumDAO u) {
		this.forumDAO = u;
	}

	
	public void addForum(Forum f) {
		forumDAO.addForum(f);
	}

	
	
	public List<Forum> listForums() {
		return forumDAO.listForums();
	}
}
*/
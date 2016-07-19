/*package com.latzchaat.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.latzchaat.model.Forum;
import com.latzchaat.service.ForumService;

@Controller
public class ForumController {

	private ForumService forumService;

	public void setForumService(ForumService forumService) {
		this.forumService = forumService;
	}

	@Autowired
	public ForumController(ForumService forumService) {

		this.forumService = forumService;
	}

	@RequestMapping("/Forum")
	public ModelAndView newForum(Model m) {
		m.addAttribute("forum", new Forum());
		List<Forum> forums = forumService.listForums();
		String json = new Gson().toJson(forums);
		ModelAndView model = new ModelAndView("sample");
		model.addObject("forums", json);
		return model;
	}

	@RequestMapping(value = "/Forum/add", method = RequestMethod.POST)
	public String addForum(Model model, @Valid @ModelAttribute("forum") Forum f, BindingResult result,
			Principal principal) {

		if (result.hasErrors())
			return "NewForum";

		f.setUser(principal.getName());
		f.setDate(new Date());
		forumService.addForum(f);

		return "redirect:/Forum";

	}
}
*/
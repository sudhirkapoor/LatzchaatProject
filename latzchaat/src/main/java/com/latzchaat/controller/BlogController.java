package com.latzchaat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.latzchaat.model.Blogs;
import com.latzchaat.service.BlogsService;

@Controller
public class BlogController {

	BlogsService blogsService;

	public void setBlogsService(BlogsService blogsService) {
		this.blogsService = blogsService;
	}

	@Autowired
	public BlogController(BlogsService blogsService) {
		super();
		this.blogsService = blogsService;
	}

	@RequestMapping(value = "/UserHome")
	public ModelAndView getAllBlogs(Model model) {
		List<Blogs> list = blogsService.getAllBlogs();
		String data = new Gson().toJson(list);
		ModelAndView mv=new ModelAndView("UserHome");
		mv.addObject("data",data);				
		System.out.println(data);
		return mv;
	}
}

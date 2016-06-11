package com.latzchaat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	/* Mapping request for index page */
	@RequestMapping("/index")
	public ModelAndView indexPage1() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	/* Mapping request for Register.jsp page */
	@RequestMapping("/Register")
	public ModelAndView registerPage() {
		ModelAndView mv = new ModelAndView("Register");
		return mv;
	}
}

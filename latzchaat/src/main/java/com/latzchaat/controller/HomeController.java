package com.latzchaat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.latzchaat.model.UserDetails;

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

	UserDetails userDetails;
	/* Mapping request for Register.jsp page */
	@RequestMapping("/Register")
	public ModelAndView registerPage(Model model) {
		ModelAndView mv = new ModelAndView("Register");
		userDetails=new UserDetails();
		model.addAttribute("userDetails",userDetails);
		
		return mv;
	}
	@RequestMapping("/Login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("Login");			
		return mv;
	}
	
	@RequestMapping("/UserProfile")
	public ModelAndView userProfilePage() {
		ModelAndView mv = new ModelAndView("Profile");			
		return mv;
	}
	
	@RequestMapping("/ViewBlogs")
	public ModelAndView blogsPage() {
		ModelAndView mv = new ModelAndView("ViewBlogs");			
		return mv;
	}
	
	/*@RequestMapping("/UserHome")
	public ModelAndView userHomePage() {
		ModelAndView mv = new ModelAndView("UserHome");			
		return mv;
	}*/
}

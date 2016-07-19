package com.latzchaat.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.latzchaat.model.Blogs;
import com.latzchaat.model.UserDetails;
import com.latzchaat.model.*;
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

	@RequestMapping("/About")
	public ModelAndView aboutPage() {
		ModelAndView mv = new ModelAndView("About");
		return mv;
	}

	@RequestMapping("/Contact")
	public ModelAndView contactPage() {
		ModelAndView mv = new ModelAndView("Contact");
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
	@RequestMapping("/CreateBlog")
	public ModelAndView createBlogPage(Model m) {
		Blogs blog=new Blogs();
		m.addAttribute("blog",blog);
		ModelAndView mv = new ModelAndView("CreateBlog");			
		return mv;
	}
	
	@RequestMapping("/chat1")
	public ModelAndView chatPage() {
		ModelAndView mv = new ModelAndView("Chat");			
		return mv;
	}
	
	@MessageMapping("/chat")
	  @SendTo("/topic/message")
	  public OutputMessage sendMessage(Message message, Principal principal) {
	    return new OutputMessage(message, new Date(),principal.getName());
	  }
	/*@RequestMapping("/UserHome")
	public ModelAndView userHomePage() {
		ModelAndView mv = new ModelAndView("UserHome");			
		return mv;
	}*/
}

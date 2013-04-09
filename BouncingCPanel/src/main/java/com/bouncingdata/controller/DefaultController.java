package com.bouncingdata.controller;

import java.util.Collections;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DefaultController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView redirLoginPage() {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView loginGet(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(ModelMap model) {
 
		model.addAttribute("error", "true");
		return "login";
 
	}
	
	@RequestMapping(value="/default", method = RequestMethod.GET)
	public String printWelcome(ModelMap model, HttpSession session) {
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String name = user.getUsername();
		session.setAttribute("username", name);
		return "default";
	}
	
	/**
	 * Authenticated users function
	 * @param request
	 * @param response
	 * @param session
	 * @return
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginAuthenticate(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("login");
		Map params =  request.getParameterMap();
		
		String username = ((String[]) params.get("username"))[0];  
		String pass = ((String[]) params.get("pwd"))[0]; 
		
		//If it's fail to authenticate, redirect to login page 
		if(username.trim().equals("admin") && pass.trim().equals("1234567")){
			session.setAttribute("username", username);
			mav.setViewName("default");
		}
		
		return mav;
	}
	 */
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}
	
	/**
	 * Delete all session in pages then redirect to login page
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout")	
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {	    
		for (Object name : Collections.list(session.getAttributeNames())) {
		    session.removeAttribute((String)name);
		}
		return new ModelAndView("login");
	}
	
}

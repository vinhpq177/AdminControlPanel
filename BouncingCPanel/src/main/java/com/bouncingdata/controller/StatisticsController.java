package com.bouncingdata.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StatisticsController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/vizday", method = RequestMethod.GET)
	public ModelAndView redirVizDayPage(HttpServletRequest request, HttpServletResponse response, HttpSession session)  {
		String user = (String) session.getAttribute("username");
		
		if(user == null || !user.equals("admin"))
			return new ModelAndView("logout");
		
		return new ModelAndView("vizDay");
	}
	
	@RequestMapping(value = "/vizcreateusr", method = RequestMethod.GET)
	public ModelAndView redirVizCreateUsrPage(HttpServletRequest request, HttpServletResponse response, HttpSession session)  {
		
		String user = (String) session.getAttribute("username");
		
		if(user == null || !user.equals("admin"))
			return new ModelAndView("logout");
		
		return new ModelAndView("vizCreateUser");
	}
}

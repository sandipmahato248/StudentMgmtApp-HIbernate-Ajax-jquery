package com.sandip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sandip.model.Login;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submit(@ModelAttribute("login") Login login) {
		if (login.getUserName().equals("admin") && login.getPassword().equals("admin")) {
			return "redirect:home";
		}
		return "login";
	}

}

package com.jean.authentication.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.jean.authentication.models.User;
import com.jean.authentication.services.UserService;

@Controller
public class Users {
    private final UserService userService;
    
    public Users(UserService userService) {
        this.userService = userService;
    }
    
    @RequestMapping("/registration")
    public String registerForm(@ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
    @RequestMapping("/login")
    public String login() {
        return "loginPage.jsp";
    }
    
    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {

    	
        if(result.hasErrors()) {
            return "registrationPage.jsp";
        }
        User user2 = userService.registerUser(user);
        session.setAttribute("userId", user2.getId());
        return "redirect:/home";
    }

	
    
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password")  String password, Model model, HttpSession session) {
	    if (userService.authenticateUser(email, password)) {
	    	User user2= userService.findByEmail(email);
	    	session.setAttribute("userId", user2.getId());
	    	return "redirect:/home";
	    }else {
	    	model.addAttribute("error", "Invalid Credentials. Please try again");
	    	return "loginPage.jsp";
	    }
	}
    
    @RequestMapping("/home")
    public String home(HttpSession session, Model model) {
    	Long userId=(Long) session.getAttribute("userId");
    	User user2=userService.findUserById(userId);
    	model.addAttribute("user",user2);
    	return "homePage.jsp";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
    session.invalidate();
    return "redirect:/login";
    }
}

package com.jean.contador;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
	@RequestMapping("")
	public String index(HttpSession session) {
		if(session.getAttribute("count") == null) {
			Integer count = 0;
			session.setAttribute("count", count);
		}
		
		
		//Codigo extra
		if(session.getAttribute("name") == null) {
			String name = "Jean";
			session.setAttribute("name", name);
		}
		
		//Fin codigo extra
		Integer count = (Integer) session.getAttribute("count");
		session.setAttribute("count", count+1);
		return "index.jsp";
	}
	@RequestMapping("/counter")
	public String counter(HttpSession session) {
		if(session.getAttribute("count") == null) {
			Integer count = 0;
			session.setAttribute("count", count);
		}
		return "counterpage.jsp";
	}
	@RequestMapping("/two")
	public String two(HttpSession session) {
		Integer count = (Integer) session.getAttribute("count");
		session.setAttribute("count", count+1);
		return "redirect:/";
	}
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.setAttribute("count", 0);
		return "redirect:/counter";
	}
}
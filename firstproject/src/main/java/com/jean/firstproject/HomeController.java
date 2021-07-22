package com.jean.firstproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller


public class HomeController {
	@RequestMapping("/hola")
	public String index(Model model, @RequestParam(value="first_name", defaultValue="Human") String firstname) {
		model.addAttribute("firstname2", firstname);
		model.addAttribute("coding","Dojo");
	
	return "index.jsp";
}
	
}

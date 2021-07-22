package com.jean.holahumano;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("")
public class HolaControlador {
	
	
	@RequestMapping("/hola")
	public String index(@RequestParam(value="first_name", defaultValue="Human") String firstname, @RequestParam(value="last_name", defaultValue="") String lastname) {
	
		
		return "<H2>Hola "+ firstname+ " "+lastname+"</H2><br><br><br><H4>Bienvenido a SpringBoot<H4>";
	}

}


package com.jean.enrutamiento;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DojoController {
	
	@RequestMapping("/{url}")
    public String showUrl(@PathVariable("url") String url){
		
		if(url.equals("dojo")) {
			return "El Dojo es increible!";}
		else if(url.equals("burbank-dojo")) {
			return "El Dojo Burbank está localizado al sur de California";}
		else if(url.equals("san-jose")) {
			return "El Dojo SJ es el cuartel general";}
		
    	return url;
    }
	

}

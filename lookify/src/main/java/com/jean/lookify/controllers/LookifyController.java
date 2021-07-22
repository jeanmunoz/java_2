package com.jean.lookify.controllers;


import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jean.lookify.models.Song;
import com.jean.lookify.services.LookifyService;

@Controller
public class LookifyController {
	private final LookifyService lookifyService;
	
	public LookifyController(LookifyService lookifyService) {
	this.lookifyService = lookifyService;
	}

	@RequestMapping("/")
	public String index(Model model) {
		return "lookify/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = lookifyService.allSongs();
		model.addAttribute("songs", songs);
		return "lookify/dashboard.jsp";
	}
	
	@RequestMapping("/songs/{id}")
	public String songs(@PathVariable("id") Long id, Model model) {
		Song song = lookifyService.findSong(id);
		model.addAttribute("song", song);
		return "lookify/song.jsp";
	}
	
	@RequestMapping("/songs/new")
	public String addNew(@ModelAttribute("addNew") Song song, Model model) {
		return "lookify/new.jsp";
	}
	
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String process(@Valid @ModelAttribute("addNew") Song song, BindingResult result, Model model) {
	    if (result.hasErrors()) {
			List<Song> songs = lookifyService.allSongs();
			model.addAttribute("songs", songs);
	        return "lookify/new.jsp";
	    }
	    else {
	        lookifyService.addSong(song);
	        return "redirect:/dashboard";
	    }
	}
	
	@RequestMapping("/search/topten")
	public String topten(Model model) {
		List<Song> songs = lookifyService.getTopTen();
		model.addAttribute("songs", songs);
		return "lookify/topten.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		lookifyService.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/search/{artist}")
	public String search(@PathVariable("artist") String artist, Model model) {
		List<Song> songs = lookifyService.getSearchSongs(artist);
		model.addAttribute("artist", artist);
		model.addAttribute("songs", songs);
		return "lookify/search.jsp";
	}
	
	@PostMapping("/search")
	public String search(@RequestParam("artist") String artist) {
		return "redirect:/search/"+artist;
	}
	
}
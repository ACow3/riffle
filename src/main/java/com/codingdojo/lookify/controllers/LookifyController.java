package com.codingdojo.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.lookify.models.Lookify;
import com.codingdojo.lookify.services.LookifyService;

@Controller
public class LookifyController {

	@Autowired
	LookifyService lookifyService;

	@GetMapping("/")
	public String home() {
		return "lookify/index.jsp";
	}

	@GetMapping("/login")
	public String login() {
		return "lookify/login.jsp";
	}
	// show all songs
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		List<Lookify> allSongs = lookifyService.getAllSongs();
		model.addAttribute("Songs", allSongs);
		return "lookify/dashboard.jsp";
	}

	// render page to create new song
	@GetMapping("/songs/new")
	public String newSong(Model model) {
		model.addAttribute("song", new Lookify());
		return "lookify/new.jsp";
	}
	
	// processes new song
	@PostMapping("/songs/process")
	public String createSong(@Valid @ModelAttribute("song") Lookify lookify, BindingResult result) {
		System.out.println("Checking if this works.");
		if( result.hasErrors() ) {
			return "lookify/new.jsp";
		}
		lookifyService.createSong(lookify);
		return "redirect:/dashboard";
	}
	
	// show one song
	@GetMapping("/songs/show/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Lookify song = lookifyService.getOneSong(id);
		model.addAttribute("Lookify", song);
		return "lookify/show.jsp";
	}
	
	// delete song
	@DeleteMapping("/songs/{id}/delete")
	public String deleteSong(@PathVariable("id") Long id) {
		lookifyService.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	// renders top songs page
	@GetMapping("/search/topTen")
	public String topTen(Model model) {
		List<Lookify> topSongs = lookifyService.getTopSongs();
		model.addAttribute("topSongs", topSongs);
		return "lookify/topTen.jsp";
	}
	
	// renders artist search page
	@GetMapping("/search")
	public String findByArtist(Model model, @RequestParam(value="search") String artist) {
		List<Lookify> artistSongs = lookifyService.findSongsByArtist(artist);		
		model.addAttribute("artistSongs", artistSongs);
		model.addAttribute("artist", artist);
		return "lookify/search.jsp";
	}
	
	
}
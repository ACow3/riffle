package com.codingdojo.lookify.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.lookify.services.LyricControllerService;



@Controller
public class LyricController {
	
	@Autowired
	LyricControllerService lyricControllerService;

	@RequestMapping(value = "/drake", produces = MediaType.APPLICATION_JSON_VALUE,  method = RequestMethod.GET)
	public String getArtistJSON(Model model)
	{
	    model.addAttribute("lyrics", getArtistCollection());
	    return "jsonTemplate";
	}

	private Object getArtistCollection() {
		final String uri = "https://api.musixmatch.com/ws/1.1/artist.search?format=jsonp&callback=callback&q_artist=drake";
	     
	    LyricController lyricController = new LyricController();
	    String result = lyricController.getForObject(uri, String.class);
	     
	    System.out.println(result);
		return result;
	    
	}

	private String getForObject(String uri, Class<String> class1) {
		// TODO Auto-generated method stub
		return null;
	}



}

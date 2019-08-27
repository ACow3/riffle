package com.codingdojo.lookify.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.lookify.models.Lookify;
import com.codingdojo.lookify.repositories.LookifyRepository;

@Service
public class LookifyService {

	@Autowired
	LookifyRepository lookifyRepository;
	
	
	// returns all songs
	public List<Lookify> allSongs() {
		return (List<Lookify>) lookifyRepository.findAll();
	}
	
	// creates a song
	public Lookify createSong(Lookify s) {
		return lookifyRepository.save(s);
	}
	
	// retrieves a song
	public void updateSong(@Valid Lookify song) {
		lookifyRepository.save(song);
	}
	
	// deletes song
	public void deleteSong(Long id) {
		lookifyRepository.deleteById(id);
	}

	public List<Lookify> getAllSongs() {
		return lookifyRepository.findAll();
	}

	public Lookify getOneSong(Long id) {
		Optional<Lookify> optionalLookify = lookifyRepository.findById(id);
		if(optionalLookify.isPresent()) {
			return optionalLookify.get();
		} else {
			
		}
		return null;
	}

	public List<Lookify> getTopSongs() {
		return lookifyRepository.findTop10ByOrderByRatingDesc();
	}

	public List<Lookify> findSongsByArtist(String artist) {
		return lookifyRepository.findByArtistContaining(artist);
	}
	
}
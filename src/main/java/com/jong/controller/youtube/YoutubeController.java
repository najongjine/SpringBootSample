package com.jong.controller.youtube;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jong.service.youtube.YoutubeInterface;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RestController
@RequestMapping("/youtube")
public class YoutubeController {
	private final YoutubeInterface youtubeService;
	
	//클라이언트에 json data를 줄땐 produces = "application/json" 을 넣어줘야한다
	@RequestMapping(value="/search",method=RequestMethod.GET,produces = "application/json")
	  public String Index(@RequestParam String term) {
	    return youtubeService.get(term);
	  }
}

package com.jong.controller.crawl;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.jong.service.crawl.YtCrawlServiceInterface;

import lombok.extern.java.Log;

@Log
@RestController
@RequestMapping("/ytcrawl")
public class YtCrawlController {
	@Autowired
	private YtCrawlServiceInterface ytCrawlService;
	
	@RequestMapping(value = "/",method = RequestMethod.POST)
	public JSONObject crawl(@RequestBody JSONObject youtubeData) throws ParseException {
		JSONObject result=ytCrawlService.requestCrawlToNode(youtubeData);
		System.out.println("## result: "+result);
		return result;
	}

}

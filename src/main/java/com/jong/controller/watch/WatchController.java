package com.jong.controller.watch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jong.config.Config;
import com.jong.service.watch.VideoWatchInterface;

@Controller
@RequestMapping("/watch")
public class WatchController {
	@Autowired
	private VideoWatchInterface videoWatchService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String watch(@RequestParam long crawled_idx) {
		String url=Config.NODEJS_BASE_API+"/stream?crawled_idx="+crawled_idx;
		return "redirect:"+url;
	}
	@ResponseBody
	@RequestMapping(value = "/nextPublicVideo", method = RequestMethod.GET)
	public long nextPublicVideo(@RequestParam long crawled_idx) {
		long nextPublicCrawledIdx=videoWatchService.getNextPublicVideo(crawled_idx);
		System.out.println("## nextPublicCrawledIdx: "+nextPublicCrawledIdx);
		String url=Config.NODEJS_BASE_API+"/stream?crawled_idx="+nextPublicCrawledIdx;
		return nextPublicCrawledIdx;
	}
	

}

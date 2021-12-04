package com.jong.controller.crawl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.jong.common.util.AuthUtil;
import com.jong.service.crawl.YtCrawlListInterface;

import lombok.extern.java.Log;

/**
 * 
 * @author najon
 *
 *	컨트롤러가 헤더로부터 온 토큰에서 유저네임을 뽑아내느 예제
 */
@Log
@RestController
@RequestMapping("/crawl_list")
public class YtCrawlListController {
	@Autowired
	private YtCrawlListInterface ytCrawlList;
	
	@RequestMapping(value = "/public",method = RequestMethod.GET)
	public Map<String,Object> crawl(@RequestHeader(name="Authorization",defaultValue="dummy")  String token) {
		String username="";
		if(token!="dummy") {
			try {
				username=AuthUtil.getMemberByUsernameJWT(token);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
			}
		}
		System.out.println("## username: "+username);
		
		List<Map> publicCrawledList=ytCrawlList.publicCrawlList(username);
		Map<String,Object> publicCrawledListJson=new LinkedHashMap<>();
		publicCrawledListJson.put("success", true);
		publicCrawledListJson.put("data", publicCrawledList);
		publicCrawledListJson.put("msg","public Crawled List");
		return publicCrawledListJson;
	}

}

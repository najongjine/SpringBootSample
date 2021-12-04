package com.jong.service.crawl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jong.mapper.YtCrawlListMapper;
import com.jong.model.crawl.CrawlModel;

@Service
public class YtCrawlListService implements YtCrawlListInterface {
	@Autowired
	private YtCrawlListMapper ytCrawlListMapper;
	
	@Override
	public List<Map> publicCrawlList(String username) {
		List<Map> publicCrawledList=ytCrawlListMapper.getPublicCrawlList(username);
		return publicCrawledList;
	}

	@Override
	public List<CrawlModel> myListAll(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CrawlModel> myListByGenre(String username, String cat) {
		// TODO Auto-generated method stub
		return null;
	}

}

package com.jong.service.crawl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jong.model.crawl.CrawlModel;

public interface YtCrawlListInterface {
	public List<Map> publicCrawlList(String username);
	public List<CrawlModel> myListAll(String  username);
	public List<CrawlModel> myListByGenre(@Param("username") String  username,@Param("cat") String cat);
}

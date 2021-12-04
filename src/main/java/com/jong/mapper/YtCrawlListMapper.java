package com.jong.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.jong.model.crawl.CrawlModel;

public interface YtCrawlListMapper {

	public CrawlModel getCrawlDatem(String video_id);

	public List<Map> getPublicCrawlList(String username);
	
	public List<CrawlModel> getMyList(@Param("username") String username,@Param("cat") String cat);
}

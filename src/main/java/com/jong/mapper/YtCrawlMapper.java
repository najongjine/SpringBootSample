package com.jong.mapper;

import com.jong.model.crawl.CrawlModel;

public interface YtCrawlMapper {
	public CrawlModel getCrawlData(String video_id);
	public void addCrawlData(CrawlModel crawlData);
	public void addPublicCrawl(CrawlModel crawlData);
}

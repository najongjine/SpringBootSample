package com.jong.service.crawl;

public interface YtCrawlWatchInterface {
	public void makeVideoPrivate(int memberIdx,long crawlIdx);
	public void addToMylist(int memberIdx,String cat, String videoId, long crawlIdx);
	public void changeMylistCat(int memberIdx,String cat, String videoId, long crawlIdx);
}

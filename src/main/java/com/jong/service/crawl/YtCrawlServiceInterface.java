package com.jong.service.crawl;

import org.json.simple.JSONObject;

public interface YtCrawlServiceInterface {
	JSONObject requestCrawlToNode(JSONObject youtubeData);
}

package com.jong.service.crawl;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.jong.config.Config;
import com.jong.mapper.YtCrawlMapper;
import com.jong.model.crawl.CrawlModel;
import com.jong.model.youtube.YoutubeModel;

import lombok.extern.java.Log;

@Log
@Service
@Transactional
public class YtCrawlService implements YtCrawlServiceInterface {
	@Autowired
	private YtCrawlMapper ytCrawlMapper;
	
	public JSONObject requestCrawlToNode(JSONObject _youtubeData) {
		
		Map<String,Object> youtubeData=(Map<String, Object>) _youtubeData.get("youtubeData");
		
		/**
		 * "video_id" : "xREF-1k4czw",
      "title" : "【Honkai Impact 3 MMD】 サマーアイドル / Summer Idol - Rozalia Olenyeva & Liliya Olenyeva",
      "thumbnail_high" : null,
      "thumbnail_medium" : null,
      "thumbnail_default" : null,
      "channel_title" : null,
      "description" : "none",
      "published_at" : null,
      "channel_id" : null,
      "inputStr" : "【Honkai Impact 3 MMD】 サマーアイドル / Summer Idol - Rozalia Olenyeva & Liliya Olenyeva"
		 */
		CrawlModel crawledModel=ytCrawlMapper.getCrawlData((String) youtubeData.get("video_id"));
		
		if(crawledModel!=null) {
			ytCrawlMapper.addPublicCrawl(crawledModel);
			
			long crawlIdx= crawledModel.getIdx();
			JSONObject crawledData=new JSONObject();
			crawledData.put("success",true);
			crawledData.put("data",crawledModel);
			crawledData.put("msg","crawled video.");
			return crawledData;
		}
		
		
		RestTemplate restTemplate = new RestTemplate();
	    final String baseUrl = Config.NODEJS_BASE_API+"/crawl/";
	    URI uri = null;
		try {
			uri = new URI(baseUrl);
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    HttpHeaders headers = new HttpHeaders();
	    //headers.set("X-COM-PERSIST", "true");    
	 
	    //Node 에서는 youtubeData를 req.body.youtubeData 가 아니라 result=req.body 이렇게 해야 전체 Json 데이터를 받을수 있음
	    HttpEntity<?> request = new HttpEntity<>(youtubeData, headers);
	     
	    ResponseEntity<JSONObject> result = restTemplate.postForEntity(uri, request, JSONObject.class);
	    
	    JSONObject fromNode=result.getBody();
	    System.out.println("## fromNode: "+fromNode);
	    boolean success=(boolean) fromNode.get("success");
	    if(success!=true) {
	    	JSONObject jsonFailed=new JSONObject();
	    	jsonFailed.put("success", false);
	    	jsonFailed.put("msg", "something went wrong in crawling");
	    	return jsonFailed;
	    }
	    Map<String,Object> dataFromNode=(Map<String, Object>) fromNode.get("data");
	    log.info("## fromNode: "+fromNode.toString());
	    /**
	     * Writing [{"msg":"crawl is working",
	     * "data":{"dbPath":"Honkai_Impact_3_MMD_サマーアイドル__Summer_Idol__Rozalia_Olenye (truncated)...]
	     */
	    CrawlModel crawlData=new CrawlModel();
	    crawlData.setChannel_id((String) youtubeData.get("channel_id"));
	    crawlData.setChannel_title((String) youtubeData.get("channel_title"));
	    
	    crawlData.setPublished_at((String) youtubeData.get("published_at"));
	    crawlData.setThumbnail_default((String) youtubeData.get("thumbnail_default"));
	    crawlData.setThumbnail_high((String) youtubeData.get("thumbnail_high"));
	    crawlData.setThumbnail_medium((String) youtubeData.get("thumbnail_medium"));
	    
	    crawlData.setVideo_id((String) youtubeData.get("video_id"));
	    
	    crawlData.setTitle((String) dataFromNode.get("dbTitle"));
	    crawlData.setDescription((String) dataFromNode.get("dbDescription"));
	    crawlData.setFilename((String) dataFromNode.get("dbFilanme"));
	    crawlData.setFullpath((String) dataFromNode.get("dbFullPath"));
	    crawlData.setPath((String) dataFromNode.get("dbPath"));
	    ytCrawlMapper.addCrawlData(crawlData);
	    ytCrawlMapper.addPublicCrawl(crawlData);
	    
	    JSONObject crawledDataJson=new JSONObject();
	    crawledDataJson.put("success",true);
	    crawledDataJson.put("data",crawlData);
	    crawledDataJson.put("msg","new crawled video.");
		return crawledDataJson;
	}
}

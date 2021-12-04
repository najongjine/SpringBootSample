package com.jong.service.youtube;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jong.config.Config;
import com.jong.model.youtube.YoutubeModel;

@Service
public class YoutubeService implements YoutubeInterface {

	@Override
	public String get(String keyword) {
		Map<String, Object> result = new HashMap<String, Object>();

		String jsonInString = "";

		try {
			/*
			HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
			factory.setConnectTimeout(5000); // 타임아웃 설정 5초
			factory.setReadTimeout(5000);// 타임아웃 설정 5초
			*/
			RestTemplate restTemplate = new RestTemplate();

			HttpHeaders header = new HttpHeaders();
			HttpEntity<?> entity = new HttpEntity<>(header);

			String url = "https://www.googleapis.com/youtube/v3/search";

			// 이게 urlencode 까지 다해줌
			UriComponents uri = UriComponentsBuilder
					.fromHttpUrl(url + "?"
							+ "key="+Config.YOUTUBE_API_KEY+"&part=snippet&maxResults=1000&q=" + keyword)
					.build();

			// 이 한줄의 코드로 API를 호출해 MAP타입으로 전달 받는다.
			ResponseEntity<Map> resultMap =null;
			try {
				resultMap = restTemplate.exchange(uri.toString(), HttpMethod.GET, entity, Map.class);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			result.put("statusCode", resultMap.getStatusCodeValue()); // http status code를 확인
			result.put("header", resultMap.getHeaders()); // 헤더 정보 확인
			result.put("body", resultMap.getBody()); // 실제 데이터 정보 확인
			
			/*
			 * Map<String,Object> 로 안받은 이유??
			 */
			LinkedHashMap lm = (LinkedHashMap) resultMap.getBody();
			
			/*
			 * 여기서도 Map<String,Object>를 안쓰고 그냥 Map 으로 하는 이유?
			 */
			List<Map> itemList = (ArrayList<Map>) lm.get("items");
			List<YoutubeModel> youtubeList=new ArrayList<YoutubeModel>();

			for (Map item : itemList) {
				YoutubeModel youTubeData = new YoutubeModel();
				Map<String, Object> id = (Map<String, Object>) item.get("id");
				String videoId = (String) id.get("videoId");
				youTubeData.setVideo_id(videoId);

				Map<String, Object> snippet = (Map<String, Object>) item.get("snippet");

				youTubeData.setTitle((String)snippet.get("title")); // 동영상 제목
				youTubeData.setPublished_at((String)snippet.get("publishedAt"));
				youTubeData.setChannel_id((String)snippet.get("channelId"));
				youTubeData.setDescription((String)snippet.get("description"));
				youTubeData.setChannel_title((String)snippet.get("channelTitle"));

				//Map<String, Map<String,Map<String,String>>> snippet2 = (Map<String, Map<String, Map<String, String>>>) item.get("snippet");
				
				Map<String,Map<String,String>> thumbnails=(Map<String, Map<String, String>>) snippet.get("thumbnails");
				String thumbnailDefault=thumbnails.get("default").get("url");
				String thumbnailMedium=thumbnails.get("medium").get("url");
				String thumbnailHigh=thumbnails.get("high").get("url");
				
				youTubeData.setThumbnail_default(thumbnailDefault);
				youTubeData.setThumbnail_high(thumbnailHigh);
				youTubeData.setThumbnail_medium(thumbnailMedium);
				youtubeList.add(youTubeData);
			}

			System.out.println("## youtubeList: "+youtubeList);
			// 데이터를 제대로 전달 받았는지 확인 string형태로 파싱해줌
			ObjectMapper mapper = new ObjectMapper();
			jsonInString = mapper.writeValueAsString(youtubeList);

		} catch (HttpClientErrorException | HttpServerErrorException e) {
			result.put("statusCode", e.getRawStatusCode());
			result.put("body", e.getStatusText());
			System.out.println("dfdfdfdf");
			System.out.println(e.toString());

		} catch (Exception e) {
			result.put("statusCode", "999");
			result.put("body", "excpetion오류");
			System.out.println(e.toString());
		}

		return jsonInString;

	}

}

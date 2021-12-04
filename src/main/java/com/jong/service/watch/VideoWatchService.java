package com.jong.service.watch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jong.mapper.VideoWatchMapper;

@Service
public class VideoWatchService implements VideoWatchInterface {
	@Autowired
	private VideoWatchMapper videoWatchMapper;
	@Override
	public long getNextPublicVideo(long crawled_idx) {
		long nextPublicCrawledIdx=videoWatchMapper.getNextPublicCrawledIdx(crawled_idx);
		return nextPublicCrawledIdx;
	}

}

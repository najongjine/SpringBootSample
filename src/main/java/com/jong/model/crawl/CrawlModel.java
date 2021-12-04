package com.jong.model.crawl;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CrawlModel {
	private long idx;
	private String title; // 동영상 제목
	private String thumbnail_default; // 동영상 썸네일 경로
	private String thumbnail_medium; // 동영상 썸네일 경로
	private String thumbnail_high; // 동영상 썸네일 경로
	private String video_id; // 동영상 식별 ID
	private String channel_title;
	private String published_at;
	private String channel_id;
	private String description;
	private String path;
	private String filename;
	private String fullpath;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date created_at;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date updated_at;
}

package com.jong.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberAuth {

	private long idx;
	private int member_idx;
	/**
	 * 유저 권한을 저장하는 DB도 꼭 만들어야 한다
	 * 
	 * String auth
	 * 필수로 들어가야하는 DB 컬럼이다
	 */
	private String auth;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date created_at;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date updated_at;

}

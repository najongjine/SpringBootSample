package com.jong.model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Member {

	/**
	 * 회원 정보를 저장하는 DB는 꼭 만들어야 한다.
	 * DB 컬럼명도 username 과 password는 필수로 넣어야한다
	 * 이 예제는 스프링 세큐리티의 디폴트 기능을 쓰기 때문에 username 검색 기반으로 해야한다
	 */
	private int idx;
	@Size(min=1,max=240)
	private String username;
	
	@Size(min=1,max=50)
	private String password;
	
	private boolean enabled;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date created_at;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date updated_at;

	private List<MemberAuth> authList;

}
